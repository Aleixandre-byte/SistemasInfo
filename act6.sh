#!/bin/bash

ficherostxt=`ls $1 |grep *.txt | wc -w`

rm $ficherostxt
echo "Se han borrado $ficherostxt ficheros .txt"

