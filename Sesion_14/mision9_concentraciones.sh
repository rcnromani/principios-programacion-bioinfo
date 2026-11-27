#!/bin/bash
# Mision 9: Clasificador de concentraciones
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: KPC-001

MUESTRAS=(P01 P02 P03 P04 P05)
CONC=(12 25 50 51 8)

BAJA=0
MEDIA=0
ALTA=0

for I in "${!MUESTRAS[@]}"
do
    if [ "${CONC[$I]}" -lt 20 ]
    then
        echo "${MUESTRAS[$I]}: ${CONC[$I]} ng/µL → baja"
        ((BAJA+=1))
    elif [ "${CONC[$I]}" -le 50 ]
    then
        echo "${MUESTRAS[$I]}: ${CONC[$I]} ng/µL → media"
        ((MEDIA+=1))
    else
        echo "${MUESTRAS[$I]}: ${CONC[$I]} ng/µL → alta"
        ((ALTA+=1))
    fi
done

echo "Baja: $BAJA | Media: $MEDIA | Alta: $ALTA"
