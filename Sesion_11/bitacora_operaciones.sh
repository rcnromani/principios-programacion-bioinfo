#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Clave de agente: KPC-001
# Mision 3: Bitacora de operaciones

# Definicion de variables
RESPONSABLE="Rodolfo Nuñez Romani"
ORGANISMO="Klebsiella pneumoniae"
CEPA="KP_UCI_001"
HERRAMIENTA="fastqc"
ESTADO="Completado"

# Identificador y fecha
ID_MUESTRA="${ORGANISMO}_${CEPA}"
FECHA=$(date +"%Y-%m-%d")

# Crear el informe con expansion de variables
cat > informe_mision.txt << EOF
==================================
    OPERACION EXPEDIENTE GENOMA
==================================
Responsable : $RESPONSABLE
Organismo   : $ORGANISMO
Cepa        : $CEPA
Muestra     : ${ID_MUESTRA}_v1
Herramienta : $HERRAMIENTA
Fecha       : $FECHA
==================================
EOF

# Agregar una linea sin expandir la variable
cat >> informe_mision.txt << 'EOF'
Estado: $ESTADO
EOF

# Mostrar el informe generado
echo "Informe generado correctamente:"
echo ""
cat informe_mision.txt
