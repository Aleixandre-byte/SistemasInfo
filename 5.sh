#!/bin/bash

num=1
acum=0
while [ $num != 0 ]
do
	read -p "escribe un numero:" num

acum=$(($num + $acum))

done

echo "la suma de todos los numeros introducidos es: $acum"
