#!/bin/bash

read -p "Nombre de usuario: " user

 maxlineas=`cat usuarios.txt | wc -l`
 numlinea=1

log=0
nolog=0

for i in `seq $numlinea $maxlineas`
do
 linea=`cat usuarios.txt| head -$numlinea | tail -1`
 usuario=`echo $linea | awk '{print $1}'`

  if [[ $user = $usuario ]]; then
	log=$((log+1))
 else
	nolog=$((nolog+1))
 fi
  numlinea=$((numlinea+1))

done

 if [ $nolog = 9 ]; then
	echo "El usuario $user no existe"
 else
	echo "El usuario $user se ha conectado $log veces"
 fi


