#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: KPC-001
# Sesion 12 - Mision 4: Filtrar el expediente

# Crear el expediente de pacientes
cat > pacientes.txt << 'EOF'
Hospital Paciente Biobanco Tipo_Usher
Barcelona Pepe Barcelona Usher2A
Mallorca Juan Barcelona usher1b
Albacete Alfonso Madrid usher2
madrid Alcia Madrid usher1a
Valencia Kevin Valencia usher1B
Castellón Didac valencia usher2B
castellón Joan Barcelona usher3
EOF

# Pacientes enviados al hospital de Castellon
echo "=== ENVIADOS A CASTELLÓN ==="
grep -i '^castell' pacientes.txt
CODIGO=$?
echo "Codigo de salida de grep: $CODIGO"
echo

# Pacientes del Biobanco de Barcelona
echo "=== BIOBANCO DE BARCELONA ==="
grep -Ei '^[^[:space:]]+[[:space:]]+[^[:space:]]+[[:space:]]+Barcelona[[:space:]]' pacientes.txt
echo

# Pacientes que no tienen Usher3
echo "=== SIN USHER3 ==="
tail -n +2 pacientes.txt | grep -iv 'usher3'
echo

# Bonus: pacientes con Usher1 o Usher2
echo "=== BONUS: USHER1 O USHER2 ==="
tail -n +2 pacientes.txt | grep -Ei 'usher(1|2)'
