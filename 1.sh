#!/bin/bash
echo "Primer valor $1"
echo "Segundo valor $2"


if [ $1 -lt $2 ]
then
	echo "el numero $2 es mayor"
elif [ $1 -gt $2 ]
then
	echo "el numero $1 es mayor"
else 
	echo "los numeros son iguales"
fi
