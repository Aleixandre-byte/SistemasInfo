#!/bin/bash

read -p "Escribe tu nota: " nota

if [ $nota -lt 5 ]
then
	echo "has suspendido con un $nota"
fi
if [ $nota -eq 5 ]
then
	echo "has aprobado con un $nota"
fi
if [ $nota -eq 6 ]
then
	echo "tienes un bien con un $nota"
fi
if [[( $nota -lt 9  &&  $nota -gt 6 ) ]]
then
	echo "tienes un notable con $nota"
else
	echo "tienes un sobresaliente con un $nota"
fi
