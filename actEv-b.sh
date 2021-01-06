#!/bin/bash

read -p "Introduce el nombre del mes: " mes


maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
valor=2

for i in `seq $numlinea $maxlineas` #bucle para comprobar el mes
  do
  linea=`cat usuarios.txt | head -$numlinea | tail -1`
  comprobar=`echo $linea | awk '{print $3}'`

  if [ $mes = $comprobar ]; then
	valor=1
 else
	valor=0
 fi

    if [ $valor -eq "1" ]; then
	echo "en el mes de $mes se conectaron los dias:" `echo $linea | awk '{print $2}'`
    fi

numlinea=$((numlinea+1))

done

