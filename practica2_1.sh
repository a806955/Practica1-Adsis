#!/bin/bash
#800616, Beltran Pardos, Miguel, T, 1, B


echo -n "Introduzca el nombre del fichero: "
read x

if test -f "$x"; then
	echo -n "Los permisos del archivo $x son: "
	ls -l "$x" | cut -c 2-4
else
	echo "$x no existe"
fi
