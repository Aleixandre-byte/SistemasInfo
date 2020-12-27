#!/bin/bash

maxlineas=`cat listado.txt | wc -l`
numlinea=1

windows=0
linux=0
accionA=0
accionB=0

while [ $numlinea -le $maxlineas ]; do
	linea=`cat listado.txt | head -$numlinea | tail -1`
	usuario=`echo $linea | awk '{print $1}'`
	so=`echo $linea | awk '{print $2}'`
	acc=`echo $linea | awk '{print $3}'`

	if [ $so = "Windows" ]; then
	  windows=$((windows+1))
	  accionA=$((accionA+acc))
	fi

	if [ $so = "Linux" ]; then
	  linux=$((linux+1))
	  accionB=$((accionB+acc))
	fi
	numlinea=$((numlinea+1))
done
echo "En Linux =usuarios: $linux procesos: $accionB"

echo "En Windows =usuarios: $windows procesos: $accionA"
