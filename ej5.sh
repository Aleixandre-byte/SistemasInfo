#!/bin/bash

total=0
resto=100
saldo=100
echo "Bienvenido a ComprasMonfort:"

while [ $resto -ge 0 ]; do

 read -p "Tiene usted $resto euros de saldo.Introduzca importe de compra:" gasto
  resto=$((resto-gasto))
  if [ $gasto -gt 0 ]; then
	saldo=$((saldo-gasto))
  fi

  if [ $gasto -gt $saldo ]; then
	echo "Ha llegado a su límite"
  break
  fi
gasto=0
done

total=$((100-saldo))
echo "Cuentas totales: gasto->$total, saldo restante $saldo"
