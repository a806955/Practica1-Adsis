#!/bin/bash
#800616, Beltran Pardos, Miguel, T, 1, B


for var in "$@"
do
	if test -f "$var"; then
		more "$var"
	else
		echo "$var no es un fichero"
	fi
	
	echo ""	#colocamos un salto de linea
done

