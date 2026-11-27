#!/bin/bash
# Bonus: Detector de genes de resistencia
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: KPC-001

GENES=(mecA vanA tetM)

for GEN in "${GENES[@]}"
do
    if grep -q "$GEN" resistencias.txt
    then
        echo "$GEN: encontrado"
    else
        echo "$GEN: no encontrado"
    fi
done
