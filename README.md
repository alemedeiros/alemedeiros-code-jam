# alemedeiros-code-jam

This is my Haskell Solution to some past [Google Code Jam][1] problems.

I'm doing this to improve my functional programming skills and to try a few new
Haskell features (stack tool, Tasty and Criterion libraries).

Eventually I might add some discussion on the solutions, if I have time.

## Current Solved Problems

-   2016
    *  Qualification Round (QR)
        +   [X] Problem A
        +   [X] Problem B
        +   [ ] Problem C
        +   [X] Problem D  -- Only for small input cases
    *  Round 1A (R1A)
        +   [X] Problem A
        +   [ ] Problem B
        +   [ ] Problem C

## Running

The executables naming is quite intuitive:

```
<year><round>-<problem>
```

where `round` is the abbreviated name of the round (QR, R1 etc) and `problem`
is just the letter that identifies the problem.

To run a solution to a problem you should use the following command

```
stack exec <executable>
```

### Tests and Benchmarks

I'm trying to add tests and benchmarks whenever possible. But I will probably
slack off a little on this once in a while.

To run the test suite, use `stack test`.

To run the benchmarks, use `stack bench`.

### Documentation

A simple Haddock documentation can be generated with `stack haddock`, initially
this isn't really helpful, but eventually I may add some details on the
solution / implementation through the documentation.


[1]: https://code.google.com/codejam/
