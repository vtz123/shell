#!/bin/bash

# go get github.com/Pingze-github/go-package-plantuml
# go build github.com/Pingze-github/go-package-plantuml 
# tool: java, graphviz

infile=$1
outfiledir=$2
file_name=${infile##*/}
layout=".puml"

outfile=${file_name%.*}$layout
echo "go-package-plantuml --gopath $GOPATH --codedir $infile  --outputfile $outfiledir"/"$outfile"

go-package-plantuml --gopath $GOPATH --codedir $infile  --outputfile  $outfiledir"/"$outfile

java -jar /home/manjaro/Downloads/Programs/plantuml.jar -tsvg $outfiledir"/"$outfile
#java -jar ./plantuml.jar -tsvg $outfiledir"/"$outfile
echo "package name :$infile, outfile: $outfiledir"/"$outfile, SUCCESS"