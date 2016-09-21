#!/bin/bash

set -ex

inPath=$1*
outPath=$2
mkdir -p output
# YOUR CODE HERE
for file in $inPath; do
#
	filename=$(basename "$file")
	outfilename=$(echo $filename | cut -f 1 -d '.')
	out=$outPath$outfilename.html
	sed -e "s/{{title}}/$(head -n 1 '$inPath$filename')/g" -e "s/{{body}}/$(tail -n +3 $inPath$filename)/g" template.html > $out
done
	echo "Done"


exit 0
	#echo "output contents" > myfile.html

