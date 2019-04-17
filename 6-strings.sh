#!/bin/bash
STRING="this is a string"
echo STRING # STRING
echo $STRING # this is a string 
echo ${STRING} # this is a string 
echo $#STRING # 0STRING
echo ${#STRING} #  Number of characters = 16


#Find the first numerical position in $STRING of any single character in $SUBSTRING that matches.
#Note that the 'expr' command is used in this case.
STRING="this is a string"
SUBSTRING="hat"
expr index "$STRING" "$SUBSTRING"     # 1 is the position of the first 't' in $STRING


STRING2="this is a string"
POS=1
LEN=3
echo ${STRING2:$POS:$LEN} # Crop starting from POS and the lenght is LEN at max  


STRING3="this is another string"
POS2=3
LEN2=4
echo ${STRING3:$POS2:$LEN2} 
echo ${STRING3:$POS2}

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
echo ${DATARECORD:0} # It crops starting from the index including the char at the index
# 0,1,13,14 in this case
echo ${DATARECORD:1}
echo ${DATARECORD:13}
echo ${DATARECORD:14}
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME


# replace first word1 with a word2 syntax ${STRING/word1/word2} or ${STRING[@]/word1/word2}
STRING="to be or not to be"
echo ${STRING[@]/be/eat}        # replace first be with eat to eat or not to be
# replace all word1 with a word2 syntax ${STRING//word1/word2} or ${STRING[@]//word1/word2}
STRING="to be or not to be"
echo ${STRING[@]//be/eat}        # to eat or not to eat
STRING="to be or not to be"
echo ${STRING[@]// not/}        # to be or to be
# replace word1 with a word2 if it's at the beginning 
# syntax ${STRING/#word1/word2} or ${STRING[@]/#word1/word2}
STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now}    # eat now or not to be
# replace word1 with a word2 if it's at the end 
# syntax ${STRING/%word1/word2} or ${STRING[@]/%word1/word2}
STRING="to be or not to be"
echo ${STRING[@]/%be/eat}        # to be or not to eat
# Can also use commands
STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}    # to be or not to be on 2012-06-14