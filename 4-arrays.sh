#!/bin/bash
my_array=(2 3)
echo ${my_array[0]} # Here curly braces are needed 
echo  ${#my_array[@]}   # Number of elements in the array
my_array[4]="carrot"  # value assignment without $ and curly brackets
echo  ${my_array[@]} # all the elements printed
echo ${my_array[4]} # carrot
# Note, my_array[3] is empty, and size is 3 not four 

numbers=()
numbers[0]=1
numbers[1]=2
numbers[2]=3
strings=()
strings[0]='hello'
strings[1]='world'
echo ${numbers[@]} # 1 2 3
echo ${strings[@]} # hello world 