# Learn Haskell

Welcome to Learn Haskell. I've set up this repo to help you... wait
for it... *learn Haskell*. I'm going to liberally borrow and refer to
many other resources. There's a large community of friendly
Haskellers out there to help!

# Lessons

* [Getting Started](#getting-started): Set up `git` and your repos.
* [Unit 00](hw00): Make sure the moving parts are moving.
* [Unit 01](hw01): Numbers, lists, basic functions.
* [Examples](examples): Some examples to test your understanding.

# Getting Started

You're welcome to use this repo in any way you like, but if I'm
personally mentoring you, here's what you need to do:

1. [Install `git` on your local machine](https://git-scm.com/downloads).
1. [Create a GitHub account](https://github.com/join) (if you don't already have one).
1. [Fork this repo](https://guides.github.com/activities/forking/).
1. [Clone your fork on your local
machine](https://help.github.com/articles/cloning-a-repository/).
Be sure to clone *your* fork, not this repo!
[(Troubleshooting)](#troubleshooting)

        $ git clone https://github.com/YOUR-GITHUB-NAME/learn-haskell.git

1. [Add a new `upstream` remote](https://help.github.com/articles/adding-a-remote/).
This will be used to [stay current](#staying-current) with new material as it appears.

        $ cd /path/to/learn-haskell
        $ git remote add upstream https://github.com/instinctive/learn-haskell.git

If you don't know `git`, here are some good resources:
* [GitHub Guides](https://guides.github.com/)
* [git - the simple guide](http://rogerdudler.github.io/git-guide/)

# Pushing your changes to your fork

When you have made changes, such as solving assignments, you can push them to
your fork (on GitHub) with the command:

    $ cd /path/to/learn-haskell
    $ git push -u origin master

# Staying current with new material

You will use the `upstream` remote whenever new material is added to this repo:

    $ cd /path/to/learn-haskell
    $ git pull upstream master

# Troubleshooting

Trying `git clone <url>` on Windows, I received:

    fatal: I don't handle protocol 'https'

This turned out to be a non-printing character between `git clone` and the
url, which must have been introduced by a bad copy-paste. I deleted that
part of the command line and retyped it.
