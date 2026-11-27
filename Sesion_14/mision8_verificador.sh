#!/bin/bash
# Mision 8: Verificador de expediente
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: KPC-001

ARCHIVOS=("muestras.fasta" "vacio.fasta" "faltante.fasta")

touch vacio.fasta

for A in "${ARCHIVOS[@]}"
do
    if [ -f "$A" ] && [ -s "$A" ]
    then
        echo "$A: OK"
    elif [ -f "$A" ]
    then
        echo "$A: VACÍO"
    else
        echo "$A: FALTA"
    fi
done
