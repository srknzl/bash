#!/bin/bash
# EXERCISE
# In this exercise, you will need to write
# a function called ENGLISH_CALC which can process sentences such as:

# '3 plus 5', '5 minus 1' or '4 times 6'
# and print the results as: '3 + 5 = 8', '5 - 1 = 4' or '4 * 6 = 24' respectively.
# complex sentences are also should be fine like: '3 plus 21 times 2' should give the result '45'.

if [ ! $# -eq 1 ]; then # If did not get exacly one argument exit.
  echo "Usage ./11-functions.sh (expression like \"12 plus 3\")"
  echo "You can use division(divided by), multiplication(times), addition(plus), substraction(minus), modulo(modulo), exponentiation(to the power))"
  exit
fi

function ENGLISH_CALC {
  command=''
  for i in $@  #$@ returns arguments as combined and seperated by a space
  do
    command="$command$i"
  done
  command=${command[@]//minus/-} #replacements
  command=${command[@]//plus/+}
  command=${command[@]//times/*}
  command=${command[@]//dividedby//}
  command=${command[@]//modulo/%}
  command=${command[@]//tothepower/**}
  echo "Result is $(($command))"
}
ENGLISH_CALC $1
