{-# LANGUAGE NoImplicitPrelude #-}

module FactFibMemo where

import BasePrelude

-- | A convenient abbreviation.
type Z = Integer

-- | An error we will use repeatedly.
errorNegative :: a
errorNegative = error "negative integer"

-- * Factorial

-- | Write the factorial function using explicit recursion. Your function should
-- look something like this:
-- 
-- > fact n = ... fact ...
--
-- Examples:
--
-- >>> fact 5
-- 120
--
-- >>> fact 10
-- 3628800
fact :: Z -> Z
fact n | n < 0 = errorNegative
fact n | n < 2 = 1
fact n = undefined

-- ** The Y-combinator

-- | This is the Y-combinator. Here's the definition:
--
-- > y f = f (y f)
--
-- A /combinator/, you will recall, is a point-free function.
-- What is it good for? Read on!
y :: (t -> t) -> t
y f = f (y f)

-- | Write @fact'@, a non-recursive version of @fact@, that takes an
-- additional argument as the function to call when the recursion takes place.
-- Your code will now look like this:
--
-- > fact' f n = ... f ...
-- 
-- Now try your function with the Y-combinator:
--
-- >>> (y fact') 6
-- 720
--
-- Do you understand why this works? Try reducing @(y fact') 3@ by hand.
fact' :: (Z -> Z) -> Z -> Z
fact' _ n | n < 0 = errorNegative
fact' _ n | n < 2 = 1
fact' f n = undefined

-- | Just to check that you do understand what's going on:
--
-- >>> yesToFact
-- True
yesToFact :: Bool
yesToFact = undefined -- just fill this in with True

-- * Fibonacci

-- | Fibonacci is notorious, in that it takes a long time to compute. Define
-- 'fib' using explicit recursion:
--
-- >>> fib 6
-- 8
--
-- Now try @mapM_ (print.fib) [0,10..40]@... you will wait a long time for 40!
-- Be prepared to ^C.
fib :: Int -> Z
fib n | n < 0 = errorNegative
fib 0 = 0
fib 1 = 1
fib n = undefined

-- | Let's do the same transformation we did for factorial:
--
-- >>> (y fib') 6
-- 8
fib' :: (Int -> Z) -> Int -> Z
fib' _ n | n < 0 = errorNegative
fib' _ 0 = 0
fib' _ 1 = 1
fib' f n = undefined

-- * Memoization

-- | Now we'll /memoize/ this function. I'm going to give you the definition. If you copy this into the code itself, the example will work. The question is, do you understand why?
-- It's not obvious. Work your way
-- through it. I suggest reducing a small example by hand:
--
-- > (y (memo . fib')) 3
--
-- Here's the definition:
-- 
-- > memo f = (map f [0..] !!)
--
-- >>> (y (memo . fib')) 6
-- 8
--
-- >>> (y (memo . fib')) 100
-- 354224848179261915075
memo :: (Int -> a) -> (Int -> a)
memo f = (map f [0..] !!)

-- | Just to check that you do understand what's going on:
--
-- >>> yesToMemo
-- True
yesToMemo :: Bool
yesToMemo = undefined -- just fill this in with True
