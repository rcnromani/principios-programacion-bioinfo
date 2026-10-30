
#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Fecha: 30/10/2026
# Descripcion: Calcula la longitud exacta y los extremos de un aislado.

echo "=== CALCULADORA DE SECUENCIAS - OPERACION KPC ==="
echo ""

read -p "ID del aislado: " id

archivo="operacion_KPC/datos_crudos/aislados_uci.fasta"

secuencia=$(grep -A1 "^>${id}|" "$archivo" | tail -1)

if [ -z "$secuencia" ]; then
    echo "Error: no se encontro el aislado $id"
    exit 1
fi

longitud=${#secuencia}
inicio=${secuencia:0:3}
final=${secuencia: -3}

echo ""
echo "Aislado             : $id"
echo "Secuencia           : $secuencia"
echo "Longitud exacta     : $longitud nucleotidos"
echo "Posible inicio 5'   : $inicio"
echo "Extremo 3'          : $final"
