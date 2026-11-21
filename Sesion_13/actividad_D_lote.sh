
#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: KPC-001
# Actividad D: Procesamiento por lote

SECUENCIAS=("ATCGATCG" "GCTAGCTAGCTAGCTA" "AAAATTTTCCCCGGGG" "ATCGATCGATCGATCG")
IDS=("seq_ecoli" "seq_salm" "seq_klebs" "seq_pseudo")

TOTAL=0

for I in "${!SECUENCIAS[@]}"; do
    SEQ="${SECUENCIAS[$I]}"
    ID="${IDS[$I]}"

    LONG=${#SEQ}
    ARN="${SEQ//T/U}"

    echo "$ID: $LONG bp | ARN: $ARN"

    TOTAL=$((TOTAL + LONG))
done

PROMEDIO=$((TOTAL / ${#SECUENCIAS[@]}))

echo "Bases totales: $TOTAL"
echo "Promedio: $PROMEDIO bp"

