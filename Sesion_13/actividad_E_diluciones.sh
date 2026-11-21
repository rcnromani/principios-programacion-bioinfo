#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: No asignada
# Actividad E: Diluciones y lecturas por bloques

# Serie de diluciones
for ((D=1; D<=8; D*=2)); do
    echo "Dilución 1:$D"
done

# Procesamiento de lecturas por bloques
TOTAL_LECTURAS=400000
BLOQUE=100000

for ((L=BLOQUE; L<=TOTAL_LECTURAS; L+=BLOQUE)); do
    PORCENTAJE=$((L*100/TOTAL_LECTURAS))
    echo "Lecturas procesadas: $L de $TOTAL_LECTURAS ($PORCENTAJE%)"
done
