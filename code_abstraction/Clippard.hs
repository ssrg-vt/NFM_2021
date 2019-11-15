{-# LANGUAGE CPP #-}
-- | A simple library fro copying to the clipboard.
module Clippard (paste) where

import System.Process
import System.Info (os)
import System.IO (hPutStr, hClose)

pasteOSX :: String -> IO ()
pasteOSX text = do
  (inp, _, _, _) <- runInteractiveCommand "pbcopy"
  hPutStr inp text
  hClose inp

pasteLinux :: String -> IO ()
pasteLinux text = do
  (inp, _, _, _) <- runInteractiveCommand "xclip"
  hPutStr inp text
  hClose inp

# ifdef mingw32_HOST_OS
pasteWindows :: String -> IO ()
pasteWindows = setClipboardString
# endif

-- | Paste text to the command-line. Automagically determines operating system.
paste :: String -> IO ()
paste =
  case os of
    "darwin" -> pasteOSX
    "linux"  -> pasteLinux
