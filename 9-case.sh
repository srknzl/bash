#!/bin/bash

# Syntax is 
# case var in
#     "case1" )
#       commands;;
#     "case2" )
#       commands;;
# esac


echo "Select one of the languages, 5 to exit"
echo "1) bash"
echo "2) perl"
echo "3) python"
echo "4) c++"
echo "5) exit"

read mycase
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected python";;
    4) echo "You selected c++";;
    5) exit
esac