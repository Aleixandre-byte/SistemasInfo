#!/bin/bash

read -p "introduce un valor:" valor
while [ $valor -lt 0 ]; do
read -p "vuelve a introducir un valor:" valor
done
echo "El valor es $valor"

if [ `expr $valor % 2` = 0 ]
then
	echo "$valor es par"
else
	echo "$valor es impar"
fi
