#!/bin/bash
PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello        world!'
echo "The price of an Apple today is: \$HK ${PRICE_PER_APPLE}" # can omit brackets just for here

FILELIST=`ls`  # called substitution, executes ls and FILELIST takes output
echo $FILELIST  

BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=$(date -d "Jan 1, 2000" +%A) # This is called expression evaluation. Date executed to find 
# which day does Jan 1, 2000 correspond to in a week?  
