#!/bin/bash
echo Hello, who am I ?
read name

# Syntax is:
# the spaces are important

# if [ expression ]; then
#   commands
# elif [ expression ]; then
#   commands
# else
#   commands
# fi  



if [ "$name" = "Serkan" ]; then
  echo "True, my name is indeed Serkan"
elif [ "$name" = "srknzl" ]; then
  echo "Yeah, but how do you know my nickname?"
else
  echo "No, you must mistaken me for $name"
fi