#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Clave de agente: KPC-001
# Mision 2: Linea de comunicacion

# Nombre de la herramienta bioinformatica
HERRAMIENTA="fastqc"

# Definir la ruta de instalacion
RUTA_HERRAMIENTA="$HOME/biotools/$HERRAMIENTA/bin"

# Crear el directorio
mkdir -p "$RUTA_HERRAMIENTA"

# Agregar la ruta a PATH
export PATH="$PATH:$RUTA_HERRAMIENTA"

# Mostrar la configuracion
echo "=================================="
echo "       LINEA DE COMUNICACION"
echo "=================================="
echo "Herramienta : $HERRAMIENTA"
echo "Directorio  : $RUTA_HERRAMIENTA"
echo ""
echo "Ruta registrada en PATH:"
echo "$PATH" | tr ':' '\n' | grep "$HERRAMIENTA"
echo "=================================="

# Pregunta de cierre:
# Al ejecutar bash configurador_path.sh, el script se ejecuta
# en un proceso hijo que no modifica el entorno del shell padre.
# Al ejecutar source configurador_path.sh, las instrucciones
# se ejecutan en la terminal actual y el cambio en PATH permanece.
