module Main where

import GCJ (gcj)
import HW01 (validate)

import Data.Bool (bool)

main :: IO ()
main = gcj $ do
    cc <- read <$> getLine
    putStrLn . out $ validate cc
  where
    out = bool "invalid" "valid"
