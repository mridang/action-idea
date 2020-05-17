#!/bin/sh -l

echo fuck
pwd
find .
echo shit
/opt/ide/bin/inspect.sh $1 $2 $3 -d $1 -$4
find $3 -name '*.xml' ! -name '.descriptions.xml' | xargs xsltproc /problems.xslt
