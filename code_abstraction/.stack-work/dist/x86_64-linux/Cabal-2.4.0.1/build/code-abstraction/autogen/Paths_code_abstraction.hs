{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_code_abstraction (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,5,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/jay/usenix_2020_artifact/code_abstraction/.stack-work/install/x86_64-linux/1a79cdb9fd78a598c198784efbd6ce62b29621f00004777f2c3e67503f52c2a8/8.6.5/bin"
libdir     = "/home/jay/usenix_2020_artifact/code_abstraction/.stack-work/install/x86_64-linux/1a79cdb9fd78a598c198784efbd6ce62b29621f00004777f2c3e67503f52c2a8/8.6.5/lib/x86_64-linux-ghc-8.6.5/code-abstraction-0.5.0.0-ElXiw9tbMtv9JjDvWMHOh3-code-abstraction"
dynlibdir  = "/home/jay/usenix_2020_artifact/code_abstraction/.stack-work/install/x86_64-linux/1a79cdb9fd78a598c198784efbd6ce62b29621f00004777f2c3e67503f52c2a8/8.6.5/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/jay/usenix_2020_artifact/code_abstraction/.stack-work/install/x86_64-linux/1a79cdb9fd78a598c198784efbd6ce62b29621f00004777f2c3e67503f52c2a8/8.6.5/share/x86_64-linux-ghc-8.6.5/code-abstraction-0.5.0.0"
libexecdir = "/home/jay/usenix_2020_artifact/code_abstraction/.stack-work/install/x86_64-linux/1a79cdb9fd78a598c198784efbd6ce62b29621f00004777f2c3e67503f52c2a8/8.6.5/libexec/x86_64-linux-ghc-8.6.5/code-abstraction-0.5.0.0"
sysconfdir = "/home/jay/usenix_2020_artifact/code_abstraction/.stack-work/install/x86_64-linux/1a79cdb9fd78a598c198784efbd6ce62b29621f00004777f2c3e67503f52c2a8/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "code_abstraction_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "code_abstraction_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "code_abstraction_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "code_abstraction_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "code_abstraction_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "code_abstraction_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
