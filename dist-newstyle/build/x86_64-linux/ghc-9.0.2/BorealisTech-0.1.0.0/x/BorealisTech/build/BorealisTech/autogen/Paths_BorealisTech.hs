{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_BorealisTech (
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
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/funky/.cabal/bin"
libdir     = "/home/funky/.cabal/lib/x86_64-linux-ghc-9.0.2/BorealisTech-0.1.0.0-inplace-BorealisTech"
dynlibdir  = "/home/funky/.cabal/lib/x86_64-linux-ghc-9.0.2"
datadir    = "/home/funky/.cabal/share/x86_64-linux-ghc-9.0.2/BorealisTech-0.1.0.0"
libexecdir = "/home/funky/.cabal/libexec/x86_64-linux-ghc-9.0.2/BorealisTech-0.1.0.0"
sysconfdir = "/home/funky/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "BorealisTech_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "BorealisTech_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "BorealisTech_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "BorealisTech_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "BorealisTech_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "BorealisTech_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
