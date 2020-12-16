#!/bin/bash

read -p "escriu un dia del 1 al 30: " dia

while [ $dia -lt 1 ] || [ $dia -gt 30 ]; do
	read -p "escriu un dia del 1 al 30: " dia
done

contador=0
while [ true ]; do
  for i in dilluns dimarts dimecres dijous divendres dissabte diumenge; do
    contador=$(($contador+1))

   if [ $contador = $dia ]
   then
	echo "El dia es $i"
	exit
   fi
  done
done
