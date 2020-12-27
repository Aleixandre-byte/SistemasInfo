#!/bin/bash

if [ -d $1 ]; then
	echo `./act6.sh $1`
   else
	echo "No existe $1"
   fi
