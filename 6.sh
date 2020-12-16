#!/bin/bash

total=0
resto=0
read -p "litros de agua consumidos: " litros

while [ $litros -le 0 ]; do
  read -p "litros de agua consumidos: " litros
done

if [ $litros -le 50 ]
then
  total=20
else
  if [ $litros -le 200 ]
  then
   resto=$(($litros-50))
   total=`echo "scale=2; $resto*0.2+20" | bc`
  else
   resto=$(($litros-200))
   total=`echo"scale=2; $resto=0.1+50" | bc`
  fi
fi

echo "Cobro total: $total"
