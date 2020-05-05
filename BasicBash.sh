#!/bin/bash


# functions must be defined top file
func_name(){
# positional args 
arg1=$1   
arg2=$2

echo "Demo func: $arg1 + $args = $(($arg1 + $arg2))"
return $(($arg1+$arg2))

}



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


3 - Functions
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

if (($input == 0 || $input <-10))
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

if (($input == 0 || $input <-99))
  then
  echo "Complex conditions: '[ cd 1 ] || [ cd2 ] '"
  echo "If was selected (=0 or less than -99): $input"
elif (($input == 1))
  then
    echo "Elif was selected: $input"
else
  echo "Else was selected: $input"
fi

# calling a function from within a script 
func_name 5 2

<<'CMTS_FUNCTIONS'

FUNCTIONS
++++++++++++++++++++++++++++++++++++++++++

Testing basic function syntaxes
CMTS_FUNCTIONS

<<'cmts_funcvals'
return values
**************************************************
cmts_funcvals

dummy (){
  a1=$1
  a2=$2
  return $(($a1+$a2))
}

dummy 31 11
echo "dummy: $?"