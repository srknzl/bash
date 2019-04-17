#!/bin/bash 
# Find common elements in three arrays.
a=(3 5 8 10 6)
b=(6 5 4 12 3 8)
c=(14 7 5 7 3 6 8)

common=()
for i in ${a[@]}
do
  foundin1=false
  foundin2=false
  for j in ${b[@]}
  do
    if [ $i -eq $j ]; then
      foundin1=true
    fi
  done
  for j in ${c[@]}
  do
    if [ $i -eq $j ]; then
      foundin2=true
    fi
  done
  if  $foundin1 && $foundin2; then
    common+=("$i")
  fi
done
echo "Common elements are ${common[@]}"