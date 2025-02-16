#!/bin/bash
<<mcomment
# user defined variables
hero="rancho"
villan="virus"

echo "3 idiots ka hero hai: $hero" 

echo "3 idiots ka villan hai: $villan"


# shell / enviroment variable bhi hote hai

echo "current logged in user: $USER"

# user input
# Here -p flag allow you to give a prompt to user
read -p "Rancho ka poraa naam kya tha " fullname

echo "Rancho ka poraa naam $fullname tha"

mcomment

<<ignorethisfornow
    $0           $1    $2     $3 (it will take argument in this form)
  ./3_idiots.sh raju farhan rancho  ( you will provide this argument while running the script )

ignorethisfornow








# arguments

echo "movie ka naam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

# $# gives you total no. of arguments users has passed (excluding 0)
echo "the total number of idiots: $#"

#$@ will print all the user given arguments starting from 1
echo "Hence the 3 idiots are $@"


