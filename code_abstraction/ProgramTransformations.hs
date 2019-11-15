{-# LANGUAGE PartialTypeSignatures, FlexibleInstances #-}


module ProgramTransformations where

import BB_Comp
import X86_Symb
import X86_CFG
import X86_Expr
import X86_Datastructures


import qualified Data.Set as Set
import qualified Data.Map as M
import Numeric (showHex)
import Control.Monad.State.Lazy
import Debug.Trace


data SubstInfo = SubstInfo {
  subst_rsp :: Maybe Expr,
  subst_rbp :: Maybe Expr
 }
 deriving Eq

instance Show SubstInfo where
  show (SubstInfo sp bp)   = "RSP == " ++ show_maybe_expr sp ++ " && RBP == " ++ show_maybe_expr bp
   where
    show_maybe_expr Nothing  = "Nothing"
    show_maybe_expr (Just e) = show_expr e

-- this function expresses all local variables in terms of RSP0
-- For example, an assignment [RBP-16,8] := 1 can become [RSP0-24,8] := 1
normalize_local_vars :: Config -> M.Map Node [(Node,String)] -> M.Map Node SState -> Node -> Maybe (M.Map Node SState)
normalize_local_vars c edges g entry =
  let init_subst = SubstInfo (Just $ E_var "RSP0" (Known 64)) (Just $ E_var "RBP0" (Known 64))
      (m,_)      = execState (prop c edges g) (M.empty,[(entry,init_subst)]) in
    Just $ M.mapWithKey (do_all_substs (traceShow (entry,m) m)) g
 where
  do_all_substs m n (SState r mem f c bd rs e) =
    let si   = m M.! n
        r'   = M.map (apply_subst c si) $ M.filterWithKey (\r _ -> r `notElem` [RSP,RBP]) r
        mem' = M.mapKeys (\(a,s) -> (apply_subst c si a,s)) $ M.map (apply_subst c si) mem
        f'   = M.map (apply_subst c si) $ f in
      SState r' mem' f' c bd rs e


-- Function prop propagates an invariant through a CFG. It starts with an initial invariant, e.g., RSP == RSP0, RBP == RBP0.
-- It then modifies the invariant based on the symbolic execution of the current block, i.e., if the current block decremented the stack-pointer with 8, the
-- new invariant becomes RSP == RSP0-8, RBP == RBP0.
-- Whenever a node can be reached in two ways, and both ways produce different invariants for the node, we merge the invariants.
--
-- prop runs in a state monad, where the state consists of a bag of pairs of type (Node,SubstInfo).
-- Each pair (n,si) indicates that node n is to be explored, with substinfo si.
-- Initially, the bag should contain one element: a pair with the entry node, and substinfo (RSP == RSP0, RBP == RBP0)
prop :: Config -> M.Map Node [(Node,String)] -> M.Map Node SState -> State (M.Map Node SubstInfo,[(Node,SubstInfo)]) ()
prop c edges g = do
  (sim,bag) <- get
  case bag of
    [] -> return ()
    ((n,si):bag') -> do
      case M.lookup n sim of
        Just si' -> 
          if si' `le_substinfo` si then
            put (sim,bag')
          else do
            let si_ = merge si' si
            put $ traceShow (n, si', si, si_) $ (M.insert n si_ sim, bag' ++ mk_children n si_)
        Nothing -> do
           put (M.insert n si sim,bag' ++ mk_children n si)
      prop c edges g
 where
  -- si is the current substinfo for node n
  -- modify si based on the symbolic execution of the node
  -- then add all children to the bag with the next substinfo
  mk_children n si =
    let ss   = g M.! n
        rsp' = case M.lookup RSP (regs ss) of
                 Nothing -> subst_rsp si
                 Just e  -> Just $ apply_subst c si e
        rbp' = case M.lookup RBP (regs ss) of
                 Nothing -> subst_rbp si
                 Just e  -> Just $ apply_subst c si e
        si' = SubstInfo rsp' rbp'
        children = map fst $ edges M.! n in
     map (\c -> (c,si')) children
  merge (SubstInfo sp bp) (SubstInfo sp' bp') = SubstInfo (merge_ sp sp') (merge_ bp bp')
  merge_ x y = case (x,y) of
                 (Nothing,_) -> Nothing
                 (_,Nothing) -> Nothing
                 (Just x,Just y) -> if x == y then Just x else Nothing

le_substinfo (SubstInfo sp bp) (SubstInfo sp' bp') = le_substinfo_ sp sp' && le_substinfo_ bp bp'
 where
  le_substinfo_ x y = case (x,y) of
                        (Just _,Nothing) -> False
                        (Just x, Just y) -> x == y
                        _                -> True



apply_subst :: Config -> SubstInfo -> Expr -> Expr
apply_subst c si e = simplify_expr c $ apply_subst' si e
 where
  apply_subst' (SubstInfo _ (Just bp)) (E_reg RBP) = bp
  apply_subst' (SubstInfo (Just sp) _) (E_reg RSP) = sp
  apply_subst' si (E_app f es)  = E_app f $ map (apply_subst' si) es
  apply_subst' si (E_deref e s) = E_deref (apply_subst' si e) s
  apply_subst' si (E_ite e0 e1 e2) = E_ite (apply_subst' si e0) (apply_subst' si e1) (apply_subst' si e2)
  apply_subst' si e = e


