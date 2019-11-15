theory Correctness
  imports Main
begin


text \<open>Correctness proof of control flow extraction algorithm.\<close>

text \<open> A datatype capturing the extracted code. Blocks are represented by polymorphic type "'v".
\<close>
datatype 'v ACode =
    Block 'v
  | Break 'v
  | Continue
  | Skip
  | ACode_Seq "'v ACode" "'v ACode" (infixr ";;" 70)
  | ACode_CASES "'v ACode list" ("CASES _")
  | ACode_WHILE "'v ACode" "('v \<times> 'v ACode) list" ("WHILE _ RESUME _")
  | Nothing 'v "'v set"

text\<open>
  Correctness is expressed by defining the semantics of a term of type @{typ "'v ACode"} as a set of paths.
  It is then proven that when extracting code starting from some vertex @{term v}, upto some joint @{term v\<^sub>j},
  the semantics of the extracted code is exactly equal to the set of paths in the CFG between @{term v} and @{term v\<^sub>j}.
  This requires that the joint is a post-dominator of the current vertex @{term v}.

  theorem main:
    postdom @{term v} @{term v\<^sub>j} ==>
    semantics (stmts @{term n} @{term v} @{term v\<^sub>j}) = paths_from_to @{term v} @{term v\<^sub>j}

  A post-dominator of @{term v} is defined as (see definition postdom) as a vertex @{term v\<^sub>j} such that all
  terminating paths starting in @{term v} pass through @{term v\<^sub>j}.

  We prove \emph{partial correctness}.
  This is achieved by passing @{typ nat} as parameter.
  If, and only if, that counter @{term n} has reached zero does the algorithm produce @{term Nothing}.
  We then prove that for any value of the counter, that \emph{if} the algorithm does not produce 
  @{term Nothing}, then the semantics of the produced code is correct.

  The most involved part of the proof is the soundness of a while loop (see lemma soundness_WHILE).
  The lemma states that if the current vertex @{term v} is is in a non-trivial scc, then the semantics
  of a while with resume (definition while_paths) is equivalent to set of paths from @{term v} to the joint @{term v\<^sub>j}.
\<close>

text \<open>Define a CFG for a set of vertices of polymorphic type @{typ 'v}.
We assume each vertex has at most two children, the set of vertices is finite, and there are no singleton loops.
\<close>

locale CFG =
  fixes post :: "'v \<Rightarrow> 'v list"
  assumes length_post: "length (post v) \<le> 2"
      and finite_v: "finite (UNIV :: 'v set)"
      and no_singleton_loops: "v \<notin> set (post v)"
begin

text \<open>The semantics.\<close>

text \<open>The set of paths induced by a while is the set of paths that can be split into three parts.
The first part is a circular path leading back to the initial vertex.
The second part leads from the initial vertex to the exit point of the while loop.
The third part leads from the exit to the joint.
\<close>
definition circular :: "'v list list \<Rightarrow> bool"
  where "circular \<Pi> \<equiv> \<forall> i < length \<Pi> - 1 . hd (\<Pi> ! (i + 1)) = hd (\<Pi> ! 0) \<and> hd (\<Pi> ! (i + 1)) \<in> set (post (last (\<Pi> ! i)))"

definition while_paths
  where "while_paths \<pi>\<^sub>w \<pi>\<^sub>r \<equiv> { \<pi> . \<exists> \<Pi> \<pi>\<^sub>0 \<pi>\<^sub>1 . 
            \<pi> = foldl (@) [] \<Pi>@\<pi>\<^sub>0@\<pi>\<^sub>1                                        \<comment> \<open>three parts\<close>
          \<and> set \<Pi> \<subseteq> \<pi>\<^sub>w                                                     \<comment> \<open>part 1 is paths in the while loop\<close>
          \<and> circular \<Pi>                                                     \<comment> \<open>part 1 is circular\<close>
          \<and> (if \<Pi> = [] then True else hd \<pi>\<^sub>0 \<in> set (post (last (last \<Pi>))))  \<comment> \<open>part 2 connects to part 1\<close> 
          \<and> \<pi>\<^sub>0 \<in> \<pi>\<^sub>w                                                         \<comment> \<open>part 2 is a path in the while loop\<close>
          \<and> (last \<pi>\<^sub>0,\<pi>\<^sub>1) \<in> \<pi>\<^sub>r }"                                            \<comment> \<open>part 3 is a resume\<close>

definition concat :: "'a list set list \<Rightarrow> 'a list set"
  where "concat X = {y . \<exists> x \<in> set X . y \<in> x}"

fun is_path :: "'v list \<Rightarrow> bool"
  where 
    "is_path [] = True"
  | "is_path [_] = True"
  | "is_path (a#b#\<pi>) = (b \<in> set (post a) \<and> is_path (b#\<pi>))"

definition is_path_from_to
  where "is_path_from_to \<pi> from to \<equiv> is_path \<pi> \<and> (if \<pi> = [] then from \<in> to else hd \<pi> = from \<and> to \<inter> set (post (last \<pi>)) \<noteq> {} \<and> to \<inter> set \<pi> = {})"

definition paths_from_to :: "'v \<Rightarrow> 'v set \<Rightarrow> ('v list) set"
  where "paths_from_to from to \<equiv> { \<pi> . is_path_from_to \<pi> from to}"

fun semantics  :: "'v ACode \<Rightarrow> ('v list) set"
  where
   "semantics (Block i) = {[i]}"
 | "semantics (Continue) = {[]}"
 | "semantics (Break i) = {[]}"
 | "semantics (Skip) = {[]}" 
 | "semantics (a;;b) = { \<pi> . \<exists> \<pi>\<^sub>0 \<pi>\<^sub>1 . \<pi> = \<pi>\<^sub>0@\<pi>\<^sub>1 \<and> \<pi>\<^sub>0 \<in> semantics a \<and> \<pi>\<^sub>1 \<in> semantics b}" 
 | "semantics (CASES cs) = concat (map semantics cs)"
 | "semantics (WHILE b RESUME rs) = 
      (let \<pi>\<^sub>r = {(i,x) . \<exists> (j,a) \<in> set rs . i=j \<and> x \<in> semantics a} in 
          while_paths (semantics b) \<pi>\<^sub>r)"
 | "semantics (Nothing v joint) = paths_from_to v joint"


text\<open>The algorithm.\<close>

text\<open>The formulation of the algorithm has been modified to be amenable for verification.
Instead of mutually recursive function, we merged the two functions into one.
\<close>
definition get_scc :: "'v \<Rightarrow> 'v set"
  where "get_scc v \<equiv> {a . \<exists> \<pi> . is_path \<pi> \<and> length \<pi> > 1 \<and> hd \<pi> = v \<and> last \<pi> = v \<and> a \<in> set \<pi>}"

definition exit 
  where "exit v\<^sub>0 v\<^sub>1 scc \<equiv> v\<^sub>0 \<in> scc \<and> v\<^sub>1 \<notin> scc \<and> v\<^sub>1 \<in> set (post v\<^sub>0)"

definition set_to_list :: "'a set \<Rightarrow> 'a list"
  where "set_to_list s = (SOME l. set l = s)"

definition exits
  where "exits scc \<equiv> { v\<^sub>1 . \<exists> v\<^sub>0 . exit v\<^sub>0 v\<^sub>1 scc}"

definition exits'
  where "exits' scc \<equiv> { (v\<^sub>0,v\<^sub>1) . exit v\<^sub>0 v\<^sub>1 scc}"

fun stmts :: "nat \<Rightarrow> 'v \<Rightarrow> 'v set \<Rightarrow> 'v ACode"
where
   "stmts n v joint = (
      let scc_v = get_scc v in
        if n = 0 then Nothing v joint
        else if v \<in> joint then Skip
        else if post v = [] then Block v
        else if v \<in> get_scc v \<and> joint \<inter> get_scc v = {} then
          let b  = map (\<lambda> v' . stmts (n-1) v' ({v} \<union> joint \<union> exits scc_v)) (post v) ;
              rs = map (\<lambda> (e,ec) . (e, stmts (n-1) ec joint)) (set_to_list (exits' scc_v)) in
            WHILE Block v;;CASES b RESUME rs
        else if length (post v) = 2 then
          Block v ;; CASES [ stmts (n-1) (hd (post v)) joint , stmts (n-1) (last (post v)) joint ]
        else \<comment> \<open>length (post v) = 1\<close>
          Block v ;;  stmts (n-1) (hd (post v)) joint
   )"

text\<open>Proof of correctness\<close>

lemma set_set_to_list:
   "finite s \<Longrightarrow> set (set_to_list s) = s"
  unfolding set_to_list_def
  by (metis (mono_tags) finite_list some_eq_ex)

lemma finite_exits:
  shows "finite (exits' scc_v)"
  using finite_v
  apply (auto simp add: exits'_def)
  by (meson UNIV_I finite_Prod_UNIV finite_subset subsetI)



lemma is_path_Cons[simp]:
  shows "is_path (a # \<pi>) = (\<pi> = [] \<or> (hd \<pi> \<in> set (post a) \<and> is_path \<pi>))"
  by (cases \<pi>,auto simp add: is_path_from_to_def)

lemma is_path_take:
  assumes "is_path \<pi>"
  shows "is_path (take n \<pi>)"
  using assms
proof(induct \<pi> arbitrary: n rule: is_path.induct)
  case 1
  thus ?case
    by auto
next
  case (2 \<pi>)
  thus ?case
    by (cases n,auto)
next
  case (3 a b \<pi>)
  show ?case
    using 3(1)[of "n-1"] 3(2-)
    by (cases n;cases "n-1";auto)
qed

lemma is_path_drop:
  assumes "is_path \<pi>"
  shows "is_path (drop n \<pi>)"
  using assms
proof(induct \<pi> arbitrary: n rule: is_path.induct)
  case 1
  thus ?case
    by auto
next
  case (2 \<pi>)
  thus ?case
    by (cases n,auto)
next
  case (3 a b \<pi>)
  show ?case
    using 3(1)[of "n-1"] 3(2-)
    by (cases n;cases "n-1";auto)
qed


lemma is_path_append[simp]:
  shows "is_path (\<pi>\<^sub>0 @ \<pi>\<^sub>1) = (if \<pi>\<^sub>0 = [] then is_path \<pi>\<^sub>1 else if \<pi>\<^sub>1 = [] then is_path \<pi>\<^sub>0 else is_path \<pi>\<^sub>0 \<and> is_path \<pi>\<^sub>1 \<and> hd \<pi>\<^sub>1 \<in> set (post (last \<pi>\<^sub>0)))"
  by(induct \<pi>\<^sub>0 arbitrary: \<pi>\<^sub>1 rule: is_path.induct, auto)

lemma is_path_from_to_Cons:
  shows "is_path_from_to (a # \<pi>) v\<^sub>0 V = (a = v\<^sub>0 \<and> a \<notin> V \<and> (if \<pi> = [] then V \<inter> set (post a) \<noteq> {} else (\<exists> b \<in> set (post a) . is_path_from_to \<pi> b V)))"
  by (cases \<pi>,auto simp add: is_path_from_to_def)

lemma is_path_from_to_append:
  shows "is_path_from_to (\<pi>\<^sub>0 @ \<pi>\<^sub>1) v\<^sub>0 V = (if \<pi>\<^sub>0 = [] then is_path_from_to \<pi>\<^sub>1 v\<^sub>0 V else if \<pi>\<^sub>1 = [] then is_path_from_to \<pi>\<^sub>0 v\<^sub>0 V else is_path \<pi>\<^sub>0 \<and> hd \<pi>\<^sub>0 = v\<^sub>0 \<and> hd \<pi>\<^sub>1 \<in> set (post (last \<pi>\<^sub>0)) \<and> V \<inter> set \<pi>\<^sub>0 = {} \<and> is_path_from_to \<pi>\<^sub>1 (hd \<pi>\<^sub>1) V \<and> hd \<pi>\<^sub>1 \<in> set (post (last \<pi>\<^sub>0)))"
  by (auto simp add: is_path_from_to_def)
  
lemma is_path_from_to_implies_is_path:
  shows "is_path_from_to \<pi> v\<^sub>0 V \<Longrightarrow> is_path \<pi>"
  by (auto simp add: is_path_from_to_def)

lemma last_take:
  assumes "n \<le> length x"
      and "n > 0"
    shows "last (take n x) = x ! (n-1)"
  using last_conv_nth[of "take n x"] assms
  apply (auto simp add: min_def)
  by fastforce

lemma no_exit_implies_within_scc:
  assumes "is_path \<pi>"
      and "\<pi>!n \<in> scc"
      and "n < length \<pi>"
      and "\<forall> i < length \<pi> - 1 . \<not>exit (\<pi> ! i) (\<pi> ! (i+1)) scc"
    shows "set (drop n \<pi>) \<subseteq> scc"
  using assms
proof(induct \<pi> arbitrary: n)
  case Nil
  thus ?case
    by auto
next
  case (Cons a \<pi>)
  show ?case
    using Cons(2-) Cons(1)[of "n-1"]
    apply (auto simp add: drop_Cons split: nat.splits)
    apply (metis (no_types, hide_lams) Cons.prems(2) Suc_diff_Suc Suc_less_eq2 diff_zero exit_def hd_conv_nth length_greater_0_conv list.set_cases neq_Nil_conv nth_Cons_0 nth_Cons_Suc subset_code(1))
    by (metis add.right_neutral add_Suc_right less_diff_conv nth_Cons_Suc subsetCE)
qed

lemma ex_Least:
  fixes n :: nat
  assumes "P n"
  shows "\<exists> m \<le> n . P m \<and> (\<forall> i < m . \<not>P i)"
  using assms
  by (metis ex_least_nat_le not_less_zero zero_order(1))


function break_up
  where "break_up [] = []"
  | "break_up (a#\<pi>) = (a # takeWhile ((\<noteq>) a) \<pi>) # break_up (dropWhile ((\<noteq>) a) \<pi>)"
  by (pat_completeness,auto)
termination break_up
  apply (relation "measure length")
  by (auto simp add: le_imp_less_Suc length_dropWhile_le)

lemma foldl_append_add_first:
  shows "foldl (@) [] (a#as) = a@foldl (@) [] as"
  apply(induct as arbitrary: a)
  apply auto[1]
  by (metis append.assoc foldl_Cons)

lemma foldl_append_add_last:
  shows "foldl (@) [] (as@[a]) = (foldl (@) [] as) @ a"
  by(induct as arbitrary: a,auto)

lemma foldl_append_init:
  shows "foldl (@) b as = b@(foldl (@) [] as)"
  apply(induct as arbitrary: b,simp)
  by (metis append.assoc foldl_Cons foldl_append_add_first)

lemma appending_break_up_is_original:
  shows "\<pi> = foldl (@) [] (break_up \<pi>)"
  apply(induct \<pi> rule: break_up.induct,auto simp del: foldl.simps simp add: foldl_append_add_first)
  by auto

lemma hd_fragment:
  assumes "\<pi>' \<in> set (break_up \<pi>)"
  shows "hd \<pi>' = hd \<pi> \<and> length \<pi>' > 0 \<and> hd \<pi> \<notin> set (tl \<pi>')"
  using assms
  apply(induct \<pi> rule: break_up.induct,auto split: if_split_asm)
  using set_takeWhileD apply force
  by (metis (mono_tags, lifting) break_up.simps(1) empty_iff empty_set hd_dropWhile)+

lemma is_path_dropWhile:
  assumes "is_path \<pi>"
  shows "is_path (dropWhile f \<pi>)"
  using assms 
  by(induct \<pi>,auto)

lemma is_path_fragment:
  assumes "\<pi>' \<in> set (break_up \<pi>)"
      and "is_path \<pi>"
    shows "is_path \<pi>'"
  using assms
  apply(induct \<pi> rule: break_up.induct)
  apply (auto simp add: is_path_dropWhile split: if_split_asm)
  apply (metis hd_append takeWhile_dropWhile_id)
  by (metis is_path_append takeWhile_dropWhile_id)

lemma length_fragments_butlast:
  assumes "\<pi>' \<in> set (butlast (break_up \<pi>))"
      and "is_path \<pi>"
    shows "length \<pi>' > 1"
  using assms no_singleton_loops
  apply(induct \<pi> rule: break_up.induct,auto simp add: is_path_dropWhile split: if_split_asm)
  by (metis (mono_tags, lifting) append_Nil break_up.simps(1) hd_dropWhile takeWhile_dropWhile_id)

lemma tl_last_fragment:
  assumes "\<pi> \<noteq> []"
  shows "tl (last (break_up \<pi>)) = [] \<longleftrightarrow> last \<pi> = hd \<pi>"
  using assms
  apply(induct \<pi> rule: break_up.induct,auto simp add: is_path_dropWhile split: if_split_asm)
  apply (metis break_up.simps(1) dropWhile_eq_Nil_conv takeWhile_eq_all_conv appending_break_up_is_original)
  apply (metis (mono_tags, lifting) break_up.simps(1) dropWhile_eq_Nil_conv last_in_set appending_break_up_is_original)
  apply (metis (mono_tags, lifting) break_up.simps(1) dropWhile_eq_Nil_conv last_in_set appending_break_up_is_original)
  by (smt break_up.simps(1) dropWhile_eq_Nil_conv dropWhile_last hd_dropWhile)+

lemma connected_butlast_fragments:
  assumes "\<pi>' \<in> set (butlast (break_up \<pi>))"
      and "is_path \<pi>"
    shows "hd \<pi> \<in> set (post (last \<pi>'))"
  using assms
  apply(induct \<pi> rule: break_up.induct,auto simp add: is_path_dropWhile split: if_split_asm)
  apply (metis (mono_tags, lifting) append_Nil break_up.simps(1) hd_dropWhile takeWhile_dropWhile_id)
  apply (metis (mono_tags, lifting) break_up.simps(1) hd_dropWhile is_path_append takeWhile_dropWhile_id)
  by (metis (mono_tags, lifting) break_up.simps(1) hd_dropWhile)

lemma fragments_are_from_original:
  assumes "\<pi>' \<in> set (break_up \<pi>)"
  shows "set \<pi>' \<subseteq> set \<pi>"
  using assms 
  apply(induct \<pi> rule: break_up.induct,auto simp add: is_path_dropWhile split: if_split_asm)
  apply (meson set_takeWhileD)
  by (meson set_dropWhileD subset_eq)

lemma circular_butlast_fragments:
  assumes "is_path \<pi>"
  shows "circular (butlast (break_up \<pi>))"
proof-
  {
    fix i
    let ?\<Pi> = "butlast (break_up \<pi>)"
    assume "i < length ?\<Pi> - 1"
    hence "hd (?\<Pi> ! (i + 1)) = hd (?\<Pi> ! 0) \<and> hd (?\<Pi> ! (i + 1)) \<in> set (post (last (?\<Pi> ! i)))"
      apply (auto simp add:  nth_butlast)
      apply (metis (no_types, lifting) hd_fragment diff_Suc_less length_greater_0_conv less_trans_Suc list.size(3) nat_diff_split_asm not_less_zero nth_mem zero_less_Suc)
      using connected_butlast_fragments[of "?\<Pi>!i" \<pi>] hd_fragment[of "?\<Pi>!(i+1)" \<pi>] assms
      apply (auto simp add: nth_butlast)
      by (metis \<open>i < length (butlast (break_up \<pi>)) - 1\<close> add_diff_inverse_nat less_SucI nat_diff_split_asm not_less_zero nth_butlast nth_mem plus_1_eq_Suc)
  }
  thus ?thesis
    apply (auto simp add: circular_def)
    by fastforce
qed

lemma break_up_is_empty:
  shows "break_up \<pi> = [] \<longleftrightarrow> \<pi> = []"
  by(induct \<pi> rule: break_up.induct,auto)


lemma last_last_fragment:
  shows "\<pi> \<noteq> [] \<Longrightarrow> last (last (break_up \<pi>)) = last \<pi>"
  apply(induct \<pi> rule: break_up.induct,auto)
  apply (metis append_Nil takeWhile_dropWhile_id break_up_is_empty)
  apply (metis (mono_tags, lifting) hd_dropWhile list.set_sel(1) self_append_conv2 takeWhile_dropWhile_id)
  apply (metis last_appendL takeWhile_dropWhile_id break_up_is_empty)
  by (simp add: dropWhile_last break_up_is_empty)
 
lemma hd_foldl_append:
  assumes "\<Pi> \<noteq> []"
      and "hd \<Pi> \<noteq> []"
    shows "hd (foldl (@) [] \<Pi>) = hd (hd \<Pi>)"
  using assms
  by (metis hd_append2 list.collapse foldl_append_add_first)

lemma last_foldl_append:
  assumes "\<Pi> \<noteq> []"
      and "last \<Pi> \<noteq> []"
    shows "last (foldl (@) [] \<Pi>) = last (last \<Pi>)"
  using assms
  by (metis append_butlast_last_id last_appendR foldl_append_add_last)

lemma foldl_append_disjunct_inductive:
  assumes "\<forall> \<pi> \<in> set \<Pi> . set \<pi> \<inter> joint = {}"
      and "set a \<inter> joint = {}"
  shows "set (foldl (@) a \<Pi>) \<inter> joint = {}"
  using assms
proof (induct \<Pi> arbitrary: a)
  case Nil
  thus ?case
    by auto
next
  case (Cons \<pi> \<Pi>)
  show ?case
    using Cons(2-) Cons(1)[of "a@\<pi>"]
    by auto
qed

lemma foldl_append_disjunct:
  assumes "\<forall> \<pi> \<in> set \<Pi> . set \<pi> \<inter> joint = {}"
  shows "set (foldl (@) [] \<Pi>) \<inter> joint = {}"
  using foldl_append_disjunct_inductive[of _ _ "[]"] assms
  by auto

lemma is_path_foldl_append:
  assumes "circular \<Pi>"
      and "\<forall> \<pi> \<in> set \<Pi> . is_path \<pi> \<and> length \<pi> > 0"
  shows "is_path (foldl (@) [] \<Pi>)"
  using assms
proof(induct \<Pi>)
  case Nil
  thus ?case
    by auto
next
  case (Cons \<pi> \<Pi>)
  have "circular \<Pi>"
    using Cons (2)
    apply (auto simp add: nat_diff_split_asm circular_def) 
    apply (simp add: Nitpick.size_list_simp(2))
    by (metis Nitpick.size_list_simp(2) Suc_less_eq add_diff_cancel_left' nth_Cons_pos plus_1_eq_Suc zero_less_Suc)
  thus ?case
    apply (cases "\<Pi> = []")
    using Cons apply (auto)[1]
    using Cons(1,2)
    apply auto
    apply (subst foldl_append_init)
    apply (subst is_path_append)
    apply (subst hd_foldl_append)
    using Cons(2)[unfolded circular_def,THEN spec,of 0]
    apply auto
    using Cons.prems(2) apply auto[1]
    using Cons.prems(2) apply auto[1]
    using Cons.prems(2) apply auto[1]
    using Cons.prems(2) apply auto[1]
    using Cons.prems(2) apply auto[1]
    by (simp add: hd_conv_nth)
qed



definition while_paths_from_semantics
  where "while_paths_from_semantics v joint \<equiv> { \<pi> . is_path \<pi> \<and> length \<pi> > 0 \<and> hd \<pi> = v \<and> (if length \<pi> = 1 then set (post v) \<inter> (joint \<union> exits (get_scc v)) \<noteq> {} else is_path_from_to (tl \<pi>) (hd (tl \<pi>)) ({v} \<union> joint \<union> exits (get_scc v))) }"

lemma soundness_WHILE:
  assumes "v \<in> get_scc v"
      and "joint \<inter> get_scc v = {}"
      and "\<pi>\<^sub>w = while_paths_from_semantics v joint"
      and "resumes = {(i,\<pi>) . \<exists> ec . exit i ec (get_scc v) \<and> is_path_from_to \<pi> ec joint }" 
    shows "while_paths \<pi>\<^sub>w resumes = paths_from_to v joint"
proof-
  have v_not_in_joint: "v \<notin> joint"
    using assms(1,2)
    by auto

  {
    fix \<pi>
    assume 0: "\<pi> \<in> paths_from_to v joint"
       and 1: "\<pi> = [v]"
    let ?\<Pi> = "[]"
    let ?\<pi>\<^sub>0 = \<pi>
    let ?\<pi>\<^sub>1 = "[]"
    have "?\<pi>\<^sub>0 \<in> \<pi>\<^sub>w"
      using assms 0 1
      apply auto
      apply (subst while_paths_from_semantics_def)
      using is_path_from_to_Cons paths_from_to_def by auto
    hence "\<pi> = foldl (@) [] ?\<Pi>@?\<pi>\<^sub>0@?\<pi>\<^sub>1 \<and> circular ?\<Pi> \<and> set ?\<Pi> \<subseteq> \<pi>\<^sub>w \<and> ?\<pi>\<^sub>0 \<in> \<pi>\<^sub>w \<and> (last ?\<pi>\<^sub>0,?\<pi>\<^sub>1) \<in> resumes"
      using assms 0 1
      apply (auto simp add: circular_def)
      by (auto simp add: paths_from_to_def exit_def is_path_from_to_def)
    hence "\<pi> \<in> while_paths \<pi>\<^sub>w resumes"
      apply (subst while_paths_def)
      by (metis (mono_tags, lifting) mem_Collect_eq)
  }
  moreover
  {
    fix \<pi>
    assume "\<pi> \<in> paths_from_to v joint"
       and "\<pi> \<noteq> [v]"  
    then obtain v' where 1: "v' \<in> set (post v) \<and> \<pi> \<in> (#) v ` paths_from_to v' joint"
      apply (auto simp add: paths_from_to_def concat_def)
      by (metis CFG.is_path_from_to_Cons CFG.is_path_from_to_def CFG_axioms image_eqI list.collapse mem_Collect_eq v_not_in_joint)
    have "\<exists> \<pi>\<^sub>l \<pi>\<^sub>1 . \<pi> = \<pi>\<^sub>l@\<pi>\<^sub>1 \<and> (last \<pi>\<^sub>l, \<pi>\<^sub>1) \<in> resumes \<and> set \<pi>\<^sub>l \<inter> exits (get_scc v) = {} \<and> (\<exists> ec . exit (last \<pi>\<^sub>l) ec (get_scc v))"
    proof (cases "\<exists> i . exit (\<pi> ! i) (\<pi> ! (i+1)) (get_scc v) \<and> i < length \<pi> - 1")
      case False
      note i = this
      let ?\<pi>\<^sub>l = \<pi>
      let ?\<pi>\<^sub>1 = "[]"
      have "set \<pi> \<subseteq> get_scc v"
      proof(cases "\<pi> = []")
        case True
        thus ?thesis
          by auto
      next
        case False
        thus ?thesis
          using 1 assms(1) i no_exit_implies_within_scc[of \<pi> 0 "get_scc v"]
          apply (auto simp add: hd_conv_nth paths_from_to_def is_path_from_to_def split: if_split_asm)
          by blast+
      qed
      hence 2: "last \<pi> \<in> get_scc v"
        using 1
        by (auto simp add: subset_iff is_path_from_to_def paths_from_to_def)
      have exit_not_in_scc: "\<forall> v\<^sub>0 v\<^sub>1 scc . exit v\<^sub>0 v\<^sub>1 scc \<longrightarrow> v\<^sub>1 \<notin> scc"
        by (auto simp add: exit_def)
      obtain ec where ec: "ec \<in> set (post (last \<pi>)) \<and> ec \<in> joint"
        using 1 v_not_in_joint
        apply (auto simp add: paths_from_to_def is_path_from_to_def split: if_split_asm)
        using assms(3) apply auto[1]
        by fastforce
      hence 3: "exit (last \<pi>) ec (get_scc v)"
        using assms
        by (auto simp add: exit_def 2)
      moreover
      have "(last ?\<pi>\<^sub>l, ?\<pi>\<^sub>1) \<in> resumes"
        using assms(4)
        apply auto
        using "3" ec is_path_from_to_def by auto
      moreover
      have "set ?\<pi>\<^sub>l \<inter> exits (get_scc v) = {}"
        apply (auto simp add: exits_def)
        using \<open>set \<pi> \<subseteq> get_scc v\<close> exit_not_in_scc
        by auto
      ultimately
      show ?thesis
        by auto
    next
      case True
        let ?P = "\<lambda> i . exit (\<pi> ! i) (\<pi> ! (i+1)) (get_scc v) \<and> i < length \<pi> - 1"
        obtain i where i: "?P i"
          using True
          by auto
        have "\<exists> j \<le> i. ?P j \<and> (\<forall> l < j . \<not> ?P l)"
          using ex_Least[of ?P i,OF i] 
          by auto
        then obtain i where i: "?P i  \<and> (\<forall> l < i . \<not> ?P l)"
          by auto

        let ?\<pi>\<^sub>l = "take (i+1) \<pi>"
        let ?\<pi>\<^sub>1 = "drop (i+1) \<pi>"
        have 0: "exit (\<pi> ! i) (\<pi> ! (i+1)) (get_scc v)"
          using i
          by auto
        have 00: "\<pi> ! i = last ?\<pi>\<^sub>l"
          apply auto
          by (metis Suc_leI add_diff_cancel_left' add_diff_inverse_nat i last_take less_SucI nat_diff_split_asm not_less_zero plus_1_eq_Suc zero_less_Suc)
        have "is_path_from_to (drop (Suc i) \<pi>) (\<pi> ! (i+1)) joint"
          using i 1
          apply (auto simp add: is_path_from_to_def paths_from_to_def is_path_drop hd_drop_conv_nth split: if_split_asm)
          by (meson disjoint_iff_not_equal in_set_dropD)+
        hence 2: "(last ?\<pi>\<^sub>l, ?\<pi>\<^sub>1) \<in> resumes"
          using assms(4) i
          by (auto simp add: last_take)

        have 3: "set ?\<pi>\<^sub>l \<inter> exits (get_scc v) = {}"
        proof-
          {
            fix v'
            assume 11: "v' \<in> set ?\<pi>\<^sub>l"
               and 12: "v' \<in> exits (get_scc v)"
            have "is_path (take (Suc i) \<pi>) \<and> \<pi> ! 0 = v"
              using 1 v_not_in_joint
              apply (cases "\<pi> = []",auto simp add: hd_conv_nth is_path_take paths_from_to_def is_path_from_to_def)
              using assms(3) by presburger
            hence "set ?\<pi>\<^sub>l \<subseteq> get_scc v"
              using no_exit_implies_within_scc[of ?\<pi>\<^sub>l 0 "get_scc v"] i 1 assms(1,3)
              by (cases "\<pi>=[]";cases "length \<pi> \<le> Suc i";auto simp add: min_def paths_from_to_def split: if_split_asm)
            hence False
              using 11 12
              by (auto simp add: exits_def exit_def)
          }
          thus ?thesis
            by auto
        qed

        thus ?thesis
          using i 0
          apply (auto simp add: last_take)
          by (metis "00" "2" add.commute append_take_drop_id plus_1_eq_Suc)
    qed
    then obtain \<pi>\<^sub>l \<pi>\<^sub>1 where 0: "\<pi> = \<pi>\<^sub>l@\<pi>\<^sub>1 \<and> (last \<pi>\<^sub>l, \<pi>\<^sub>1) \<in> resumes \<and> set \<pi>\<^sub>l \<inter> exits (get_scc v) = {} \<and> (\<exists>ec. exit (last \<pi>\<^sub>l) ec (get_scc v))"
      by auto
    hence 2: "\<pi>\<^sub>l \<noteq> []"
      using 1
      by (auto simp add: exit_def is_path_from_to_def assms(1) assms(4))
    have 3: "is_path \<pi>\<^sub>l"
      using 0 1 2
      apply (auto simp add: paths_from_to_def is_path_from_to_def split: if_split_asm)
      apply (metis "2" is_path.simps(2) is_path_append)
      apply (metis is_path_Cons is_path_append)
      apply (metis is_path_Cons is_path_append)
      done
    let ?\<Pi> = "butlast (break_up \<pi>\<^sub>l)"
    let ?\<pi>\<^sub>0 = "last (break_up \<pi>\<^sub>l)"
    have 00: "set \<pi> \<inter> joint = {}"
      using 1 v_not_in_joint
      by (auto simp add: paths_from_to_def is_path_from_to_def split: if_split_asm)
    hence 00: "set \<pi>\<^sub>l \<inter> joint = {}"
      using 0 
      by (auto)

    have "\<pi>\<^sub>l = foldl (@) [] ?\<Pi> @ ?\<pi>\<^sub>0"
      apply (subst foldl_append_add_last[symmetric])
      apply (subst append_butlast_last_id)
      apply (subst break_up_is_empty)
      using 2 apply simp
      by (simp add: appending_break_up_is_original)
    hence 10: "\<pi> = foldl (@) [] ?\<Pi> @ ?\<pi>\<^sub>0 @ \<pi>\<^sub>1"
      using 0
      by auto
    moreover
    have "circular ?\<Pi>"
      using circular_butlast_fragments 3
      by simp
    moreover
    have "set ?\<Pi> \<subseteq> \<pi>\<^sub>w"
    proof-
      {
        fix \<pi>'
        assume 4: "\<pi>' \<in> set (butlast (break_up \<pi>\<^sub>l))"
        have 55: "is_path \<pi>'"
          using is_path_fragment
          by (meson "3" "4" in_set_butlastD)
        hence 5: "is_path (tl \<pi>')"
          by (metis break_up.cases is_path.elims(3) is_path_Cons list.sel(2) list.sel(3))
        have 6: "tl \<pi>' \<noteq> []"
          using length_fragments_butlast
          by (metis "3" "4" Nitpick.size_list_simp(2) One_nat_def not_less_iff_gr_or_eq zero_less_one)
        have 7: "v \<in> set (post (last (tl \<pi>')))"
          using connected_butlast_fragments
          by (metis "0" "1" "2" "3" "4" "6" hd_append2 image_iff last_tl list.sel(1))
        have 8: "set \<pi>' \<subseteq> set \<pi>\<^sub>l"
          by (simp add: fragments_are_from_original "4" in_set_butlastD)
        hence 9: "set (tl \<pi>') \<inter> ({v} \<union> joint \<union> exits (get_scc v)) = {}"
          using 0 1 2 hd_fragment 4 8 00
          apply (auto simp add: is_path_from_to_def) 
          apply (smt hd_fragment hd_append2 in_set_butlastD list.sel(1))
          apply (smt Int_subset_iff disjoint_iff_not_equal inf_sup_absorb list.set_sel(2) subsetCE tl_Nil)
          by (smt disjoint_iff_not_equal list.set_sel(2) subsetCE tl_Nil)
        have "0 < length \<pi>' \<and> hd \<pi>' = v"
          using 1 hd_fragment
          apply auto
          using "6" list.sel(2) apply blast
          by (smt "0" "2" "4" hd_append2 in_set_butlastD list.sel(1) hd_fragment)
        moreover
        have "is_path_from_to (tl \<pi>') (hd (tl \<pi>')) ({v} \<union> joint \<union> exits (get_scc v))"
          using 0 2 1 3 hd_fragment 4 5 6 7 8 9
          by (auto simp add: paths_from_to_def is_path_from_to_def split: if_split_asm)[1]
        ultimately
        have "\<pi>' \<in> \<pi>\<^sub>w"
          using assms(3) 3 4 55 nat_neq_iff length_fragments_butlast
          by (auto simp add: while_paths_from_semantics_def)
      }
      thus ?thesis
        by auto
    qed
    moreover
    have 11: "break_up \<pi>\<^sub>l \<noteq> []"
      by (simp add: "2" break_up_is_empty)
    hence 12: "tl ?\<pi>\<^sub>0 = [] \<Longrightarrow> set (post v) \<inter> (joint \<union> exits (get_scc v)) \<noteq> {}"
      using hd_fragment[of ?\<pi>\<^sub>0 \<pi>\<^sub>l] 0
      apply (auto simp add: exit_def exits_def)
      by (smt "0" "1" "2" UnCI disjoint_iff_not_equal hd_append2 image_iff list.sel(1) mem_Collect_eq tl_last_fragment)
    have 13: "is_path ?\<pi>\<^sub>0"
      using 0 3 11 is_path_fragment last_in_set 
      by blast
    have "tl ?\<pi>\<^sub>0 \<noteq> [] \<Longrightarrow> is_path_from_to (tl ?\<pi>\<^sub>0) (hd (tl ?\<pi>\<^sub>0)) (insert v (joint \<union> exits (get_scc v)))"
      using 11 hd_fragment[of ?\<pi>\<^sub>0 \<pi>\<^sub>l] tl_last_fragment[of \<pi>\<^sub>l] 2 0 00 fragments_are_from_original[of ?\<pi>\<^sub>0 \<pi>\<^sub>l]
      apply (auto simp add: is_path_from_to_def last_tl last_last_fragment)
      apply (metis "3" \<open>break_up \<pi>\<^sub>l \<noteq> []\<close> is_path_Cons last_in_set list.exhaust_sel is_path_fragment)
      apply (auto simp add: exits_def exit_def)[1]
      apply (metis "0" "1" hd_append2 image_iff list.sel(1))
      apply (meson disjoint_iff_not_equal list.set_sel(2) rev_subsetD)
      by (metis "0" insert_disjoint(1) list.set_sel(2) mk_disjoint_insert subsetCE)
    hence "?\<pi>\<^sub>0 \<in> \<pi>\<^sub>w"
      using assms(3) 11 12 last_in_set hd_fragment
      apply (cases "tl ?\<pi>\<^sub>0 = []")
      apply (cases "?\<pi>\<^sub>0")
      apply auto[1]
      apply auto[1]
      apply (smt "0" "1" "13" "2" CFG.while_paths_from_semantics_def CFG_axioms Int_commute One_nat_def Un_insert_left \<open>\<pi>\<^sub>l = foldl (@) [] (butlast (break_up \<pi>\<^sub>l)) @ last (break_up \<pi>\<^sub>l)\<close> hd_append2 image_iff insert_disjoint(1) last_snoc length_Suc_conv list.sel(1) list.sel(3) list.size(3) mem_Collect_eq mk_disjoint_insert tl_last_fragment zero_less_Suc)
      apply (simp add: while_paths_from_semantics_def split: if_split_asm)
      apply (metis (no_types, lifting) "0" "1" "12" "2" \<open>\<pi>\<^sub>l = foldl (@) [] (butlast (break_up \<pi>\<^sub>l)) @ last (break_up \<pi>\<^sub>l)\<close> hd_append2 image_iff last_snoc list.sel(1) list.sel(3) tl_last_fragment)
      apply (simp add: while_paths_from_semantics_def split: if_split_asm)
      by (metis (no_types, lifting) "0" "1" "13" "2" hd_append2 image_iff last_in_set length_0_conv length_Suc_conv list.sel(1) list.sel(3))
    ultimately
    have "\<pi> \<in> while_paths \<pi>\<^sub>w resumes"
      using 0 2
      apply (auto simp add: while_paths_def)
      by (metis 3 10 break_up.simps(1) last_in_set self_append_conv2 appending_break_up_is_original hd_fragment connected_butlast_fragments last_last_fragment)
  }
  ultimately
  have "\<And> \<pi> . \<pi> \<in> paths_from_to v joint \<Longrightarrow> \<pi> \<in> while_paths \<pi>\<^sub>w resumes"
    by auto
  moreover
  {
    fix \<pi> :: "'v list"
    assume "\<pi> \<in> while_paths \<pi>\<^sub>w resumes"
    then obtain \<Pi> \<pi>\<^sub>0 \<pi>\<^sub>1  where
           0: "\<pi> = foldl (@) [] \<Pi>@\<pi>\<^sub>0@\<pi>\<^sub>1"
       and 1: "circular \<Pi>"
       and 2: "set \<Pi> \<subseteq> \<pi>\<^sub>w"
       and 3: "\<pi>\<^sub>0 \<in> \<pi>\<^sub>w"
       and 4: "(last \<pi>\<^sub>0,\<pi>\<^sub>1) \<in> resumes"
       and 5: "if \<Pi> = [] then True else hd \<pi>\<^sub>0 \<in> set (post (last (last \<Pi>)))"
      by (auto simp add: while_paths_def)
    have 6: "\<forall>\<pi>\<in>set \<Pi>. is_path \<pi> \<and> 0 < length \<pi>"
      using 2 assms(3)
      by (auto simp add: while_paths_from_semantics_def)
    hence "is_path (foldl (@) [] \<Pi>)"
      by (rule is_path_foldl_append[OF 1])
    moreover
    have "is_path \<pi>\<^sub>0"
      using 3 assms(3)
      by (auto simp add: while_paths_from_semantics_def)
    moreover
    have "foldl (@) [] \<Pi> \<noteq> [] \<Longrightarrow> last (foldl (@) [] \<Pi>) = last (last \<Pi>)"
      apply (subst last_foldl_append)
      apply auto
      by (metis 6 break_up.simps(1) last_in_set length_greater_0_conv appending_break_up_is_original)
    moreover
    have "\<pi>\<^sub>1 \<noteq> [] \<Longrightarrow> \<pi>\<^sub>0 \<noteq> [] \<Longrightarrow> exit (last \<pi>\<^sub>0) (hd \<pi>\<^sub>1) (get_scc v)"
      using assms(4) 4
      by (simp add: is_path_from_to_def)
    moreover
    have "is_path \<pi>\<^sub>1"
      using "4" assms(4) is_path_from_to_implies_is_path
      by auto[1]
    ultimately
    have "is_path \<pi>"
      using 0 5
      apply (auto split: if_split_asm)
      apply (simp add: exit_def)
      using "3" CFG.while_paths_from_semantics_def CFG_axioms assms(3) apply fastforce
      by (simp add: exit_def)
    moreover
    have "\<forall>\<pi>\<in>set \<Pi>. hd \<pi> = v"
      using 2 assms(3)
      by (auto simp add: while_paths_from_semantics_def)
    hence "hd \<pi> = v"
      using 0
      apply (cases "\<Pi>= []";cases "\<pi>\<^sub>0")
      apply auto
      using "3" assms(3) while_paths_from_semantics_def apply auto[1]
      using "3" CFG.while_paths_from_semantics_def CFG_axioms assms(3) apply fastforce
      using "3" assms(3) while_paths_from_semantics_def apply auto[1]
      apply (cases "foldl (@) [] \<Pi>")
      apply auto
      apply (metis "6" append_butlast_last_id append_is_Nil_conv last_in_set length_greater_0_conv foldl_append_add_last)
      using hd_foldl_append[of \<Pi>] 
      apply (cases "hd \<Pi> = []",auto)
      using "6" by auto[1]
    moreover
    obtain e ec where "exit e ec (get_scc v) \<and> last \<pi>\<^sub>0 = e \<and> is_path_from_to \<pi>\<^sub>1 ec joint"
      using assms(4) 4
      by auto
    moreover
    have "\<forall> \<pi> \<in> \<pi>\<^sub>w . set \<pi> \<inter> joint = {}"
      apply (subst assms(3))
      apply (auto simp add: while_paths_from_semantics_def)
      apply (metis hd_conv_nth in_set_conv_nth less_Suc0 v_not_in_joint)
      apply (metis One_nat_def hd_conv_nth in_set_conv_nth less_one v_not_in_joint)
      by (metis is_path_from_to_def IntD2 Nitpick.size_list_simp(2) inf_sup_absorb insert_disjoint(1) list.sel(1) list.sel(3) list.set_cases mk_disjoint_insert v_not_in_joint)
    hence "set \<pi> \<inter> joint = {}"
      using 0 2 3 
      apply (auto)
      apply (meson disjoint_iff_not_equal subset_code(1) foldl_append_disjunct)
      by (metis Int_absorb1 bot.extremum calculation(3) disjoint_iff_not_equal empty_set is_path_from_to_def)
    ultimately
    have "\<pi> \<in> paths_from_to v joint"
      apply (auto simp add: paths_from_to_def is_path_from_to_def)
      using 0 3 while_paths_from_semantics_def assms(3) apply fastforce
      by (smt "0" "3" append_Nil2 append_is_Nil_conv assms(3) disjoint_iff_not_equal exit_def last_appendR length_greater_0_conv mem_Collect_eq while_paths_from_semantics_def)
  }
  ultimately
  show ?thesis
    by auto
qed

definition postdom 
  where "postdom v\<^sub>0 V \<equiv> \<forall> \<pi> . length \<pi> > 0 \<and> is_path \<pi> \<and> hd \<pi> = v\<^sub>0 \<and> post (last \<pi>) = [] \<longrightarrow> V \<inter> set \<pi> \<noteq> {}"

lemma postdom_implies_child:
  assumes "postdom v joint"
      and "v \<notin> joint"
      and "joint \<noteq> {}"
    shows "post v \<noteq> []"
  using assms(1)[unfolded postdom_def,THEN spec,of "[v]"] assms(2-)
  by (auto simp add: postdom_def)

primrec index_of :: "'a \<Rightarrow> 'a list \<Rightarrow> nat"
  where "index_of a [] = 0"
  | "index_of a (b#bs) = (if a = b then 0 else 1 + index_of a bs)"

lemma index_of_spec:
  assumes "a \<in> set x"
  shows "index_of a x < length x"
  using assms
  by(induct x,auto)

lemma index_of_spec2:
  assumes "a \<in> set x"
  shows "x ! index_of a x = a"
  using assms
  by(induct x,auto)


lemma exit_implies_path_to_exit:
  assumes "exit e ec (get_scc v)"
      and "joint \<inter> get_scc v = {}"
  shows "\<exists> \<pi> . length \<pi> > 0 \<and> is_path \<pi> \<and> hd \<pi> = v \<and> ec \<in> set (post (last \<pi>)) \<and> joint \<inter> set \<pi> = {}"
proof-
  from assms obtain \<pi> where \<pi>: "is_path \<pi> \<and> length \<pi> > 1 \<and> hd \<pi> = v \<and> last \<pi> = v \<and> e \<in> set \<pi>"
    by (auto simp add: exit_def get_scc_def)
  let ?\<pi> = "take (index_of e \<pi> + 1) \<pi>"
  have "length ?\<pi> > 0 \<and> is_path ?\<pi> \<and> hd ?\<pi> = v \<and> ec \<in> set (post (last ?\<pi>)) \<and> joint \<inter> set ?\<pi> = {}"
    using \<pi> assms
    apply (auto simp add: last_take is_path_take index_of_spec index_of_spec2 exit_def)
    apply (subst last_take)
    apply (auto simp add: is_path_take last_take index_of_spec Suc_le_eq index_of_spec2 exit_def)
    using get_scc_def in_set_takeD by fastforce
  thus ?thesis
    by blast
qed

lemma postdom_exit:
  assumes "exit e ec (get_scc v)"
      and "postdom v joint"
      and "joint \<inter> get_scc v = {}"
      and "v \<notin> joint"
    shows "postdom ec joint"
proof-
  {
    fix \<pi>
    assume 0: "is_path \<pi>"
       and 1: "hd \<pi> = ec"
       and 2: "post (last \<pi>) = []"
       and 3: "length \<pi> > 0"
    obtain \<pi>\<^sub>0 where \<pi>\<^sub>0: "length \<pi>\<^sub>0 > 0 \<and> is_path \<pi>\<^sub>0 \<and> hd \<pi>\<^sub>0 = v \<and> ec \<in> set (post (last \<pi>\<^sub>0)) \<and> joint \<inter> set \<pi>\<^sub>0 = {}"
      using exit_implies_path_to_exit[OF assms(1,3)]
      by auto
    let ?\<pi> = "\<pi>\<^sub>0@\<pi>"
    have "is_path ?\<pi> \<and> hd ?\<pi> = v"
      using \<pi>\<^sub>0 1 0 assms(2,4) 2
      by (auto simp add: postdom_def is_path_from_to_def split: if_split_asm)
    hence "joint \<inter> set ?\<pi> \<noteq> {}"
      using \<pi>\<^sub>0 2 3 assms(2)[unfolded postdom_def,THEN spec, of ?\<pi>]
      by (auto simp add:  split: if_split_asm)
    hence "joint \<inter> set \<pi> \<noteq> {}"
      using \<pi>\<^sub>0
      by auto
  }
  thus ?thesis
    by (auto simp add: postdom_def)
qed

lemma postdom_next:
  assumes "postdom v joint"
      and "n \<in> set (post v)"
      and "v \<notin> joint"
    shows "postdom n joint"
proof-
  {
    fix \<pi>
    assume 0: "is_path \<pi>"
       and 1: "hd \<pi> = n"
       and 2: "post (last \<pi>) = []"
       and 3: "length \<pi> > 0"
    let ?\<pi> = "v#\<pi>" 
    have "is_path ?\<pi> \<and> hd ?\<pi> = v \<and> post (last ?\<pi>) = [] \<and> length ?\<pi> > 0"
      using 0 1 2 3 assms(2)
      by auto
    hence "joint \<inter> set ?\<pi> \<noteq> {}"
      by (metis postdom_def assms(1) list.set(2))
    hence "joint \<inter> set \<pi> \<noteq> {}"
      using assms(3)
      by auto
  }
  thus ?thesis
    by (auto simp add: postdom_def)
qed




lemma main_inductive:
  assumes "postdom v joint"
      and "joint \<noteq> {}"
    shows "semantics (stmts n v joint) = paths_from_to v joint"
  using assms
proof(induct v joint rule: stmts.induct)
  case (1 n v joint)
  note IH = this
  let ?scc_v = "get_scc v"
  consider 
      "n = 0"
    | "n \<noteq> 0 \<and> v \<in> joint"
    | "n \<noteq> 0 \<and> v \<notin> joint \<and> post v = []"
    | "n \<noteq> 0 \<and> v \<notin> joint \<and> post v \<noteq> [] \<and> v \<in> ?scc_v \<and> joint \<inter> ?scc_v = {}"
    | "n \<noteq> 0 \<and> v \<notin> joint \<and> post v \<noteq> [] \<and> (v \<notin> ?scc_v \<or> joint \<inter> ?scc_v \<noteq> {}) \<and> length (post v) = 2"
    | "n \<noteq> 0 \<and> v \<notin> joint \<and> post v \<noteq> [] \<and> (v \<notin> ?scc_v \<or> joint \<inter> ?scc_v \<noteq> {}) \<and> length (post v) = 1"
    using length_post[of v]
    using le_Suc_eq numeral_2_eq_2
    by auto
  thus ?case
  proof (cases)
    case 1
    thus ?thesis
      by auto
  next
    case 2
    thus ?thesis
      by (auto simp add: paths_from_to_def is_path_from_to_def)
  next
    case 3
    thus ?thesis
      apply (auto simp add: paths_from_to_def is_path_from_to_def)
      using 1(3-) postdom_implies_child
      by (auto simp add: paths_from_to_def is_path_from_to_def)
  next
    case 4
    hence 5: "v \<in> get_scc v \<and> joint \<inter> ?scc_v = {}"
      and 6: "v \<notin> joint"
      and 7: "post v \<noteq> []"
      and 8: "n \<noteq> 0"
      by auto
    have 9: "v \<notin> exits (get_scc v)"
      using 5
      by (auto simp add: exits_def exit_def)
    have 10: "(joint \<union> exits (get_scc v)) \<inter> get_scc v = {}"
      using 5
      by (auto simp add: exits_def exit_def)
    have 11: "\<forall> v' \<in> set (post v) . postdom v' ({v} \<union> joint \<union> exits (get_scc v))"
      using 1(6) postdom_next
      apply auto
      by (simp add: "6" inf_sup_distrib2 postdom_def)

    have 100: "{v # \<pi>\<^sub>1 |\<pi>\<^sub>1. \<pi>\<^sub>1 \<in> local.concat (map (semantics \<circ> (\<lambda>v'. stmts (n-Suc 0) v' (insert v (joint \<union> exits (get_scc v))))) (post v))} = while_paths_from_semantics v joint"
      using IH(1)[of "get_scc v",OF _ 8 6 7 5] 7 9 11 IH(6-) no_singleton_loops 
      apply (auto simp add: while_paths_from_semantics_def simp del: stmts.simps)
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      subgoal premises prems for _ \<pi>' 
      proof-
        let ?\<pi>\<^sub>1 = "tl \<pi>'"
        have "?\<pi>\<^sub>1 \<noteq> [] \<Longrightarrow> hd ?\<pi>\<^sub>1 \<in> set (post (hd \<pi>')) \<and> ?\<pi>\<^sub>1 \<in> paths_from_to (hd ?\<pi>\<^sub>1) (insert (hd \<pi>') (joint \<union> exits (get_scc (hd \<pi>'))))"
          using prems
          apply (auto simp add: paths_from_to_def simp del: stmts.simps)
          by (metis is_path_Cons list.collapse)
        hence "\<pi>' = hd \<pi>' # ?\<pi>\<^sub>1 \<and> ?\<pi>\<^sub>1 \<in> concat (map (semantics \<circ> (\<lambda>v'. stmts (n-Suc 0) v' (insert (hd \<pi>') (joint \<union> exits (get_scc (hd \<pi>')))))) (post (hd \<pi>')))"
          using prems
          apply (cases "tl \<pi>'";auto simp add: concat_def simp del: stmts.simps)
          apply (metis list.collapse)
          apply (simp add: Nitpick.size_list_simp(2))
          using list.collapse by fastforce
        thus ?thesis
          by auto
      qed
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (metis UnCI Un_insert_right is_path.simps(1) length_0_conv length_Suc_conv list.sel(1))
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (metis (no_types, hide_lams) Int_commute UnCI Un_insert_right is_path.simps(1) is_path_Cons list.exhaust_sel)
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (metis UnCI Un_insert_left is_path.simps(1) length_0_conv length_Suc_conv list.collapse list.sel(3))
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      by (metis (no_types, lifting) UnCI Un_insert_left is_path.elims(2) list.sel(1) list.sel(3))

    have 101: "{p. \<exists>x\<in>set (set_to_list (exits' (get_scc v))). fst p = fst x \<and> snd p \<in> semantics (stmts (n-Suc 0) (snd x) joint)} = {(i, \<pi>). \<exists>ec. exit i ec (get_scc v) \<and> is_path_from_to \<pi> ec joint}"
      using IH(2)[of "get_scc v",OF _ 8 6 7 5] 7 9 11 IH(6-) no_singleton_loops
      using finite_exits[of "get_scc v"]
      apply (auto simp add: set_set_to_list exits'_def simp del: stmts.simps)
      using 4 paths_from_to_def postdom_exit apply fastforce
      by (smt 4 paths_from_to_def postdom_exit mem_Collect_eq)
    show ?thesis
      using 4
      apply (subst stmts.simps)
      apply (auto simp del: stmts.simps simp add: case_prod_unfold Let_def)
      apply (subst (asm) soundness_WHILE[where v=v and joint=joint, OF _ _ 100 101])
      apply simp
      apply simp
      apply (auto simp add: concat_def)[1]
      apply (subst soundness_WHILE[where v=v and joint=joint, OF _ _ 100 101])
      apply simp
      apply simp
      apply (auto simp add: concat_def paths_from_to_def)[1]
      done
  next
    case 5
    hence 6: "v \<notin> joint"
      by auto
    have 2: "postdom (hd (post v)) joint"
      using postdom_next 5 6
      apply (auto)
      using "1.prems"(1) list.set_sel(1)
      by blast+
    have 3: "postdom (last (post v)) joint"
      using postdom_next 5 6
      apply (auto)
      using "1.prems"(1) last_in_set
      by blast+
    thus ?thesis
      apply (subst stmts.simps)
      using IH(3,4)[of "get_scc v",OF _ ] 1(6-) 2 3 5
      apply (auto simp add: Let_def paths_from_to_def is_path_from_to_Cons simp del: stmts.simps)
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      subgoal premises prems for _ \<pi>'
      proof-
        let ?\<pi>\<^sub>1 = "tl \<pi>'"
        have "\<pi>' = v # ?\<pi>\<^sub>1 \<and> ?\<pi>\<^sub>1 \<in> local.concat [{\<pi>. is_path_from_to \<pi> (hd (post v)) joint}, {\<pi>. is_path_from_to \<pi> (last (post v)) joint}]"
          using prems
          apply (cases \<pi>',auto simp del: stmts.simps simp add: concat_def)
          apply (metis is_path_from_to_def list.collapse)
          apply (auto simp del: stmts.simps simp add: is_path_from_to_def)
          apply (smt Nitpick.size_list_simp(2) eq_numeral_Suc last_ConsR last_in_set length_greater_0_conv length_tl list.distinct(1) list.sel(1) list.sel(3) list.set_cases numeral_2_eq_2)
          apply (smt Nitpick.size_list_simp(2) eq_numeral_Suc last_ConsR last_in_set length_greater_0_conv length_tl list.distinct(1) list.sel(1) list.sel(3) list.set_cases numeral_2_eq_2)
          apply (smt Nitpick.size_list_simp(2) One_nat_def empty_iff empty_set eq_numeral_Suc last_ConsR last_in_set length_0_conv list.sel(1) list.sel(3) list.set_cases numeral_2_eq_2 numerals(1))
          by blast
        thus ?thesis
          by auto
      qed
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      apply (auto simp add: concat_def paths_from_to_def is_path_from_to_def simp del: stmts.simps)[1]
      subgoal premises prems for _ _ \<pi>'
      proof-
        let ?\<pi>\<^sub>1 = "tl \<pi>'"
        have "\<pi>' = v # ?\<pi>\<^sub>1 \<and> ?\<pi>\<^sub>1 \<in> local.concat [{\<pi>. is_path_from_to \<pi> (hd (post v)) joint}, {\<pi>. is_path_from_to \<pi> (last (post v)) joint}]"
          using prems
          apply (cases \<pi>',auto simp del: stmts.simps simp add: concat_def)
          apply (metis is_path_from_to_def list.collapse)
          apply (auto simp del: stmts.simps simp add: is_path_from_to_def)
          apply (smt Nitpick.size_list_simp(2) eq_numeral_Suc last_ConsR last_in_set length_greater_0_conv length_tl list.distinct(1) list.sel(1) list.sel(3) list.set_cases numeral_2_eq_2)
          apply (smt Nitpick.size_list_simp(2) eq_numeral_Suc last_ConsR last_in_set length_greater_0_conv length_tl list.distinct(1) list.sel(1) list.sel(3) list.set_cases numeral_2_eq_2)
          apply (smt Nitpick.size_list_simp(2) One_nat_def empty_iff empty_set eq_numeral_Suc last_ConsR last_in_set length_0_conv list.sel(1) list.sel(3) list.set_cases numeral_2_eq_2 numerals(1))
          by blast
        thus ?thesis
          by auto
      qed
      done
  next
    case 6
    have 2: "postdom (hd (post v)) joint"
      using postdom_next 6
      apply (auto)
      using "1.prems"(1) list.set_sel(1)
      by blast+
    thus ?thesis
      apply (subst stmts.simps)
      using 1(5)[of "get_scc v",OF _ ] 1(6-) 2 6
      apply (auto simp add: Let_def paths_from_to_def is_path_from_to_Cons simp del: stmts.simps)
      apply (meson disjoint_iff_not_equal is_path_from_to_def list.set_sel(1))
      apply (meson disjoint_iff_not_equal is_path_from_to_def list.set_sel(1))
      subgoal premises prems for _ \<pi>' 
      proof-
        have "\<pi>' = v # (tl \<pi>') \<and> is_path_from_to (tl \<pi>') (hd (post v)) joint"
          using prems(8) 1(6-) 
          apply (auto simp add: is_path_from_to_def last_tl split: if_split_asm)
          apply (metis CFG.is_path_from_to_def CFG_axioms list.collapse prems(10) prems(5))
          apply (smt "6" CFG.is_path_from_to_def CFG_axioms Int_commute Nitpick.size_list_simp(2) One_nat_def eq_numeral_Suc insert_disjoint(1) last_ConsL length_0_conv list.collapse list.simps(15) numerals(1) prems(10))
          using is_path_from_to_def prems(10) tl_Nil apply fastforce
          apply (metis is_path_Cons is_path_from_to_implies_is_path list.collapse prems(10) tl_Nil)
          apply (metis is_path_Cons is_path_from_to_def empty_iff empty_set length_0_conv length_Suc_conv list.collapse prems(10) prems(7) set_ConsD tl_Nil)
          apply (metis is_path_from_to_def prems(10) prems(5))
          by (metis is_path_from_to_def disjoint_iff_not_equal empty_set list.sel(2) list.set_sel(2) prems(10))
          thus ?thesis
            by metis
      qed
      apply (meson disjoint_iff_not_equal is_path_from_to_def list.set_sel(1))
      apply (meson disjoint_iff_not_equal is_path_from_to_def list.set_sel(1))
      subgoal premises prems for _ _ \<pi>' 
      proof-
        have "\<pi>' = v # (tl \<pi>') \<and> is_path_from_to (tl \<pi>') (hd (post v)) joint"
          using prems(4,8,9,10,11) 1(6-) 
          apply (auto simp add: is_path_from_to_def last_tl split: if_split_asm)
          apply (metis 6)
          apply (metis list.collapse)
          apply (metis 6 One_nat_def hd_conv_nth in_set_conv_nth last_conv_nth length_tl less_Suc0 list.size(3))
          apply (metis is_path_Cons hd_Cons_tl)
          apply (metis 6 hd_conv_nth in_set_conv_nth is_path_Cons less_one list.collapse)
          by (meson disjoint_iff_not_equal list.set_sel(2))
        thus ?thesis
          by metis
      qed
      done
  qed
qed

theorem main:
  assumes "postdom v {v\<^sub>j}"
    shows "semantics (stmts n v {v\<^sub>j}) = paths_from_to v {v\<^sub>j}"
  using main_inductive assms
  by auto

end