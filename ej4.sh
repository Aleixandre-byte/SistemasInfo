#!/bin/bash

intentos=101;
aleatorio=$((RANDOM%100))
echo $aleatorio
while [[ $num != $aleatorio ]]
do

read -p "Escribe el número a adivinar:" num

let multiplo=$num%$aleatorio
let divisible=$aleatorio%$num

 if  [ $divisible == 0 ]; then
  echo "el número introducido es divisor del número aleatorio"
 fi
 if [ $multiplo == 0 ]; then
  echo "el número introducido es multiplo del número aleatorio"
 fi

intentos=$((intentos-1))
done

echo "Has conseguido un total $intentos puntos"
