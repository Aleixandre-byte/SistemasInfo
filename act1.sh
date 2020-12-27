#!/bin/bash

maxlineas=`cat nombres.txt | wc -l`
linea=1

while [ $linea -le $maxlineas ]; do
j=`cat nombres.txt | head -$linea | tail -1`

mkdir "$j"
cd "$j"

for i in `seq 1 $1`
do
mkdir "carpeta $i"
done
cd ..
linea=$(($linea+1))

done
