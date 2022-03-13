#!/bin/bash
#800616, Beltran Pardos, Miguel, T, 1, B
#805467, Gonzalez Pizarro, Laura, T, 1, B

num="[0-9]"
letra="[a-zA-Z]"

echo -n "Introduzca una tecla: "
read -n 1 tecla

echo ""

if [[ $tecla = $num ]]; then
	echo "$tecla es un numero"
elif [[ $tecla = $letra ]]; then
	echo "$tecla es una letra"
else
	echo "$tecla es un caracter especial"
fi