#!/bin/bash

maxlineas=`cat precipitaciones.txt | wc -l`
suma=0
i=0
media=0

while [ $i -le $maxlineas ]; do
	litros=`cat precipitaciones.txt | head -$i | tail -1 | awk '{print $2}'`
	suma=$((litros+suma))
	i=$((i+1))
done

media=$((suma/maxlineas))
echo "La media de precipitaciones es de $media"
