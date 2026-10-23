#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Fecha: 23/10/2026
# Descripcion: Genera secuencias FASTA simuladas y muestra su inventario.

ARCHIVO='operacion_KPC/datos_crudos/aislados_uci.fasta'
mkdir -p operacion_KPC/datos_crudos
cat > "$ARCHIVO" << 'EOF_FASTA'
>KP_UCI_001|Klebsiella_pneumoniae|paciente_01
ATGCGTACGTTAGCTAGCTAACGTTAGCTAGGCTAACGTTCGATCGATCGTACGATCGTA
>KP_UCI_002|Klebsiella_pneumoniae|paciente_02
ATGCGTACGTTAGCTAGCTAACGTTAGCTAGGCTAACGTTCGATCGATCGTACGATCGTT
>KP_UCI_003|Klebsiella_pneumoniae|paciente_03
ATGCGTACGTTAGCTAGCTAACGTTAGCTAGGCTAACGTTCGATCGATCGTACGAT
EOF_FASTA

echo "Archivo FASTA creado: $ARCHIVO"
echo "Secuencias interceptadas: $(grep -c '^>' "$ARCHIVO")"
echo ''
echo 'Identificadores:'
grep '^>' "$ARCHIVO"
echo ''
echo 'Longitud aproximada (incluye salto de linea):'
echo "KP_UCI_001 : $(grep -A1 '^>KP_UCI_001' "$ARCHIVO" | tail -1 | wc -c) caracteres"
echo "KP_UCI_002 : $(grep -A1 '^>KP_UCI_002' "$ARCHIVO" | tail -1 | wc -c) caracteres"
echo "KP_UCI_003 : $(grep -A1 '^>KP_UCI_003' "$ARCHIVO" | tail -1 | wc -c) caracteres"
echo ""
echo "=========================================="
echo "   MISION COMPLETADA - OPERACION KPC"
echo "=========================================="
echo ""
echo "Este mensaje se autodestruira en..."
echo "3"; sleep 1
echo "2"; sleep 1
echo "1"; sleep 1
clear
