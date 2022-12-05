module GCJ where

import Data.Foldable (for_)

gcj :: IO () -> IO ()
gcj go = do
    n <- read <$> getLine
    for_ [(1::Int)..n] $ \i -> do
        putStr $ "Case #" ++ show i ++ ": "
        go

gcjLn :: IO () -> IO ()
gcjLn = gcj . ((putChar '\n') >>)
