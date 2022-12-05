# HW01 - Numbers, Lists, Basic Functions

In this assignment, you'll gain practice in writing functions that manipulate
numbers and lists. This assignment is the credit card validation sequence from
Brent Yorgey's [CIS 194 Homework
1](http://www.cis.upenn.edu/~cis194/spring13/lectures.html).

* Chapters 2 and 3 from the Haskell Book.
* Brent's [Lecture Notes](http://www.cis.upenn.edu/~cis194/spring13/lectures/01-intro.html).
* Do Exercises 1-4 from the first two pages of Brent's [CIS 194 Homework
  1](http://www.cis.upenn.edu/~cis194/spring13/hw/01-intro.pdf).
  
  (We will do the *Tower of Hanoi* problems (Exercises 5-6) later.)

  *Warning:* These exercises kinda jump in the deep end with respect to lists.
  Check the CIS 194 Lecture Notes, and ask questions if you're confused.
  Here's a quick cheat sheet:

        []                    -- the empty list
        [3,4,5]               -- a list of three numbers
        x : yy                -- add x to the front of the list yy
        xx ++ yy              -- append the list xx to the front of list yy
        null :: [a] -> Bool   -- return true if the list is empty
        reverse :: [a] -> [a] -- reverse the order of a list

        -- Here we define a function that does something to a list:
        -- (note that successive definitions will be tried in order)
        foo []     = undefined -- the list is empty
        foo (x:yy) = undefined -- the list has at least one element
                               -- that element is labeled 'x' in the right hand side
                               -- the rest of the list (which might be empty) is labeled 'yy'

    * Edit [HW01.hs](src/HW01.hs) to define the functions referred to in the
      assignment. You may test your work in the interpreter.

            $ cd /path/to/hw01
            $ stack ghci
            [...]
            > toDigits 1234
            [1,2,3,4]
            > toDigits 0
            []
            > toDigits (-17)
            []
            > doubleEveryOther [8,7,6,5]
            [16,7,12,5]
            > doubleEveryOther [1,2,3]
            [1,4,3]
            > sumDigits [16,7,12,5]
            22
            > validate 4012888888881881
            True
            > validate 4012888888881882
            False

    * When you are confident you have figured everything else, you can test
      your solution against the sample data:

            $ cd /path/to/hw01
            $ stack build
            $ ../bin/check.sh validate
            :- OK
