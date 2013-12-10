#!/bin/sh
#script to take the .md files in a directory and convert to pdf in the same directory
#requires pandoc

FILES=$(ls | grep -i '.md')
for i in $FILES; do 
   pandoc -f markdown_github --template=/Users/jraab/pandoc-templates/protocols.latex --latex-engine=pdflatex -o $(basename $i .md ).pdf $i
done

