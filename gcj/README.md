# GCJ

This library provides two functions:
```haskell
gcj   :: IO () -> IO ()
gcjLn :: IO () -> IO ()
```
These functions are a wrapper for a [Google Code
Jam](https://code.google.com/codejam/) style problem definition. The
read an initial count **T**, the number of test cases, and then run
the supplied `IO ()` action that many times. For each such case, the
function outputs the text: `Case #x: ` (with a trailing space).

The `gcjLn` function outputs an additional newline character, for
problems which require it.
