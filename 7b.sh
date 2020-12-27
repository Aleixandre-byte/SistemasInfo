#!/bin/bash

diasemana=0

while [ true ]; do
  for i in lunes martes miercoles jueves viernes sabado domingo; do
  diasemana=$((diasemana+1))
	if [ $diasemana -eq $1 ] 
     	then
		echo $i
		exit
	fi
	done
done
