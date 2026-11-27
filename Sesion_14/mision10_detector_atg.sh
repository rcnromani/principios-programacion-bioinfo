#!/bin/bash
# Mision 10: Detector de codon de inicio
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: KPC-001

IDS=(s1 s2 s3 s4 s5)
SECUENCIAS=(ATGAAA GGCTTA ATGCCC TTAGCA ATGGGG)

TOTAL_ATG=0

for I in "${!SECUENCIAS[@]}"
do
    if [ "${SECUENCIAS[$I]:0:3}" = "ATG" ]
    then
        echo "${IDS[$I]}: inicia con ATG"
        ((TOTAL_ATG+=1))
    else
        echo "${IDS[$I]}: no inicia con ATG"
    fi
done

echo "Secuencias con ATG: $TOTAL_ATG"
