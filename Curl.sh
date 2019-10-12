#!/bin/bash
URL="https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&rettype=fasta&id=" #URL base del enlace que deseamos bajar
lista="EF438954.1 EF438952.1 EF438908.1 EF438894.1 EF438953.1" #Lista de accesiones que deseamos bajar.
echo "Escribe \"y\" si deseas guardar las secuencias en archivos o \"n\" si solo deseas verlas en terminal"
read texto
if [ "$texto" = "y" ]; then
    mkdir "secuencias"
    for i in $lista
    do
        echo "Descargando secuencia con Accession $i"
        curl -s "$URL$i" > ./secuencias/${i}.fasta #Instruccion curl, con el argumento -s que significa silent, con la concatenacion de URL con alguna Accession.
    done
    echo "Descarga finalizada, tenga un buen dia :)"
else
    for i in $lista
    do
        curl -s "$URL$i" #Instruccion curl, con el argumento -s que significa silent, con la concatenacion de URL con alguna Accession.
    done
fi