# shcolorlib
a POSIX shell color library, licensed under the LGPLv3.0

## description

This is a POSIX shell color library, which aims to bring color operations to
the terminal and shell scripts, such as converting between different color
formats, labeling colors, performing format specific operations (increasing
saturation), and pretty printing colors.

Currently the script has only been tested with GNU coreutils, dash, & bash

## usage
You can either source the program in a script like this:

`. shcolorlib`

Or you can use the library directly:

`shcolorlib rgb2hex "71,87,243"`

## dependencies (runtime)
* POSIX sed
* POSIX bc
* POSIX tr

## optional dependencies (runtime)
* quickjs
* tcc
* GNU date (benchmarking)

## installation

Just run: `make && make install PREFIX=/usr DESTDIR=...`

## running the test suite

shcolorlib ships with two test suites:
* one for testing the speed of each function
* one for testing the correctness of each function

To run the speed test, run: `shcolorlib run_time_test`

To run the assertion test, run: `shcolorlib run_assertion_test`

## quickjs and tcc in a shell library?

Quickjs and tcc are used in the shell library for functions
that are slow in shell. Those two runtimes offer speeds that
are either equivalent to shell or faster. They are also totally
optional to the end user, there is no need to have either of
these programs installed, because there are no methods exclusive
to either of these runtimes.
