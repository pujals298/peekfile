#!/bin/bash
# Little script to visualize either the whole content of a file or just a few lines.

file=$1
number=$2

# if no number provided by user default to 3
if [[ $number -eq 0 ]]
then number=3 
fi

# if input file has 2 times number of lines requested display full content; otherwise print a warning	
if [[ $(wc -l < "$file") -le $(( 2*$number )) ]]
	then 
		cat "$file"
	else
		echo Warning: File too large. Only printing first and last $number lines. 
		echo First $number lines:
		head -n $2 $1 
		echo "..."
		echo Last $number lines:
		tail -n $2 $1
fi
