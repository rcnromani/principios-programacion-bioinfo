#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Clave de agente: KPC-001
# Bonus: El agente fantasma

# La variable local no se hereda al proceso hijo.
# La variable exportada si puede ser utilizada en el subshell.

# Definicion de variables
CLAVE_LOCAL="KPC-001"
export CLAVE_AGENTE="GENOMA-2026"

echo "=================================="
echo "        EL AGENTE FANTASMA"
echo "=================================="

echo "=== SHELL PRINCIPAL ==="
echo "Clave local  : $CLAVE_LOCAL"
echo "Clave agente : $CLAVE_AGENTE"

echo ""
echo "=== SUBSHELL ==="

bash -c 'echo "Clave local  : $CLAVE_LOCAL"; echo "Clave agente : $CLAVE_AGENTE"'

echo "=================================="

# Al ejecutar con bash, las variables del script no permanecen
# en la terminal padre.
# Al ejecutar con source, las variables quedan definidas
# en la terminal actual. CLAVE_AGENTE tambien queda exportada.
