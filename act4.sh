#!/bin/bash
conta=0


echo "PARES"
for i in $(cat numeros.txt); do
	let resto=$i%2
	if [ $resto -eq 0 ]; then
	echo $i
	conta=$((conta+1))
	fi
	done
echo "el numero de nombres pares es $conta"

contb=0

echo "IMPARES"
for j in $(cat numeros.txt); do
	let resto=$j%2
	if [ $resto -ne 0 ]; then
	echo $j
	contb=$((contb+1))
	fi
	done
echo "el numero de nombres impares es $contb"
