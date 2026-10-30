
#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Fecha: 30/10/2026
# Descripcion: Simula la transcripcion de ADN a ARN mensajero.

echo "=== TRANSCRIPTOR DE SECUENCIAS - OPERACION KPC ==="
echo ""

read -p "ID del aislado: " id

archivo="operacion_KPC/datos_crudos/aislados_uci.fasta"

adn=$(grep -A1 "^>${id}|" "$archivo" | tail -1)

if [ -z "$adn" ]; then
    echo "Error: no se encontro el aislado $id"
    exit 1
fi

# La longitud no cambia porque cada T se reemplaza por una U, sin agregar ni eliminar bases.
arn=${adn//T/U}

longitud_adn=${#adn}
longitud_arn=${#arn}

echo ""
echo "=== TRANSCRIPCION: ADN A ARNm - $id ==="
echo "ADN (5' a 3') : $adn"
echo "ARN (5' a 3') : $arn"
echo "Longitud ADN  : $longitud_adn bases"
echo "Longitud ARN  : $longitud_arn bases"
