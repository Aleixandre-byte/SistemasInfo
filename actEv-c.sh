#!/bin/bash

read -p "Introduce el dia: " dia
read -p "Introduce el mes: " mes

numline=1
maxline=`cat usuarios.txt | wc -l`

for i in `seq $numline $maxline`
  do
 linea=`cat usuarios.txt | head -$numlinea | tail -1`
 comprDia=`echo $linea | awk '{print $2}'`

  if [ $dia = $comprDia ]; then
	echo `cat usuarios.txt | grep $dia | awk '{print $1}'`
  fi

numline=$((numline+1))

done
