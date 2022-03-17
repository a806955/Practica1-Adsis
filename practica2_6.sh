#!/bin/bash
#800616, Beltran Pardos, Miguel, T, 1, B??????
#El panita Jan

if test $(ls /home/"$USER" -l -t | grep '^d' | grep 'bin[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]' | wc -l) -eq 0 
then 
	dir=$(mktemp -d ${HOME}/binXXX)
  echo "Se ha creado el directorio $dir"
else
	dir=$(ls $HOME -r -l -t | grep '^d' | grep 'bin[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]' | cut -f9 -d" " | head -n1)
	dir=${HOME}/$dir
fi

echo "Directorio destino de copia: $dir"

total=0
for i in $(ls) #cualquier cosa que no sea un dir y sea ejecutable
do
	if [ -x "$i" -a ! -d "$i" ]
	then
		cp "$i" "$dir"
		echo "./$i ha sido copiado a $dir"
		total=$(($total + 1))
	fi
done

if test $total -gt 0 
then
	echo "Se han copiado $total archivos"
else
	echo "No se ha copiado ningun archivo"
fi
