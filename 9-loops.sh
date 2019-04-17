#!/bin/bash
list=(1 2 3 4 5 5 5)

# Syntax with loops:

# for x in ${list[@]}
# do
#   commands
# done
# spaces are important in while's expression, can use break and continue
# put "!" with a spaces to revert the condition, || and && are also usable 
# while [ expression ]; do
#   commands
# done


for num in ${list[@]}
do
  echo $num
done


COUNT=1 
while [ ! $COUNT -gt 5 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT + 1))
done


COUNT=1
until [ $COUNT -gt 5 ]; do  # runs when condition is false
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT + 1))
done


COUNT=0
while [ $COUNT -ge 0 ]; do
  echo "Value of COUNT is: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done

COUNT=0
while [ $COUNT -lt 10 ]; do
  COUNT=$((COUNT+1))
  # Check if COUNT is even
  if [ $(($COUNT % 2)) = 0 ] ; then
    continue
  fi
  echo $COUNT
done