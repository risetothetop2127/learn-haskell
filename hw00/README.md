# HW00 - Getting Started

* Read Chapters 1 and 2 of the [Haskell Book](haskellbook.com).
* Install [`haskell stack`](https://docs.haskellstack.org/en/stable/README/)
* Run the following command to setup Haskell. If your shell can't find `stack`,
  restart your shell and try again. (This command is doing a global setup of
  `stack`, so it does not need to be run in any specific project's directory.)

        $ stack setup

* Edit the Haskell file `hw00/src/HW00.sh`.
    * You will see that `greeting` is `undefined`.
    * Change it to print `hello, world!` with a trailing newline.
    * *Hint*: Section 2.2 of the Haskell Book.
* Try your code in `ghci`, the Haskell interpreter:

```
$ cd /path/to/hw00
$ stack ghci
Configuring GHCi with the following packages: gcj, hw00
[...]
*Main GCJ HW00
> greeting
hello, world!
```

* Compile your code and check it against the sample input I have provided.

```
$ cd /path/to/hw00
$ stack build
Configuring GHCi with the following packages: gcj, hw00
[...]
$ ../bin/check.sh hello
-: OK
```

**Beneath the Hood**

You don't need to worry about these details at the moment, but they may help
your understanding.

* `src/HW00.hs` is library code. The `greeting` function is provided by this library.
* `hello/Main.hs` is application code. Every application has a `main` function:

        main :: IO ()

    `Main.hs` imports the libraries `GCJ` and `HW00`. The `gcj` function is
    supplied by [the `GCJ` library](../gcj), and the `greeting` function is
    supplied by the `HW00` library.
* `hw00.cabal`: How this is all put together is controlled by the project's cabal file.
  You don't need to understand the internals of the cabal file (yet), but it's there for you.
* `stack.yaml`: This file controls how the `stack` tool functions, and can be ignored for now.
* `Setup.hs`: This file is used by cabal, and can be ignored for now.
