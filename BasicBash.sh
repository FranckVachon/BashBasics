#!/bin/bash

<<'COMMENTS'
==============================
1 - Using RST
Trying to integrate it, at least just the very basics. Then include that everywhere.

HEADINGS: seems best to declare the headings early on, then  re-use the symbols.
==============================


2 - Level 2 headings 
+++++++++++++++++++++++++++++


3 - Level 3
****************************

4 - Lvl 4
----------------------------


Summary of content 
==============================

1 - Variable, xpression evals
++++++++++++++++++++++++++++++

2 - IF / ELIF / ELSE
+++++++++++++++++++++++



The following line ends the comment section.
COMMENTS

<<'COMMENTS_varsxpress'

Variables & xpression evals
+++++++++++++++++++++++++++++
Demoing various syntaxes

COMMENTS_varsxpress
read -p "Some prompt as to what I expect you to enter. 
Tell me your name:" name

echo Hello World, $name!!!
echo Comparing different expressions evaluations...

echo "Text and variable in echo:"$name
n=4

echo "Xpression - \$(n+1). (doesn't work)"
echo "Xpression - \$(\$(n+1)).(doesn't work)"
echo "Xpression - ((n+1)). (just regular text)"
echo "Xpression \$((n+1)) - $((n+1)). (proper arithmetic)"
echo "End part 1"
echo ""
echo "-----------------------------"
<<'CMTS_IF'

IF - ELIF - ELSE
++++++++++++++++++++++++++
CMTS_IF

read -p "If (0), elif (1), else(anything):" input

a=0
b=1


echo "Testing if & truth values"

if [[ input = $a  &&  0 = $a ]]
then
  echo "'[0]' is true"
else
  echo "'[0]' is false"
fi
if [ 1 ]
then
  echo "'[1]' is true"
else
  echo "'[1]' is false"
fi

if [[ $input -eq $a ]]
  then
  echo "Complex conditions: '[ cd 1 ] || [ cd2 ] '"
  echo "If was selected (=0 or less than -99): $input"
elif [ $input -eq $b ]
  then
    echo "Elif was selected: $input"
else
  echo "Else was selected: $input"
fi

