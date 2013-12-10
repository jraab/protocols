#!/bin/sh
#script to take the .md files in a directory and convert to pdf in the same directory
#requires pandoc

FILES=$(ls | grep -i '.md')
for i in $FILES; do 
   pandoc -f markdown -o $(basename $i .md ).pdf $i
done

