#!/bin/bash

maxlineas=`cat precipitaciones.txt | wc -l`
i=0


while [ $i -le $maxlineas ]; do
	litros=`cat precipitaciones.txt | head -$i | tail -1| awk '{print $2}'`
	dia=`cat precipitaciones.txt | head -$i| tail -1| awk '{print $1}'`

	if [ $litros -eq 0 ]; 
	then
	echo "el dia $dia (`./7b.sh $dia`) no llovió"
	fi

i=$((i+1))

done

