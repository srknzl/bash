#!/bin/bash

# Syntax of a function:
# function_name {

# }
# Functions are called simply by writing their names. 
# A function call is equivalent to a command.
# Parameters may be passed to a function, by specifying them after the function name.
# The first parameter is referred to in the function as $1, the second as $2 etc.


function function_B {
  echo "Function B."
}
function function_A {
  echo "$1"
}
function adder {
  echo "$(($1 + $2))"
}

# FUNCTION CALLS
# Pass parameter to function A
function_A "Function A."     # Function A.
function_B                   # Function B.
# Pass two parameters to function adder
adder 12 56                  # 68

