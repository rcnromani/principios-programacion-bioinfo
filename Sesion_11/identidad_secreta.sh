#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Clave de agente: KPC-001
# Mision 1: Identidad secreta

# Variables locales
ORGANISMO="Klebsiella pneumoniae"
CEPA="KP_UCI_001"
TIPO_MUESTRA="Aislado bacteriano"
RESPONSABLE="Rodolfo Nuñez Romani"

# Variable de entorno
export LABORATORIO="Laboratorio Central de Genomica"

# Identificador de la muestra
ID_MUESTRA="${ORGANISMO}_${CEPA}"

# Fecha actual
FECHA=$(date +"%Y-%m-%d")

# Ficha de identificacion
echo "=================================="
echo "         FICHA DE MUESTRA"
echo "=================================="
echo "Organismo   : $ORGANISMO"
echo "Cepa        : $CEPA"
echo "Tipo        : $TIPO_MUESTRA"
echo "Responsable : $RESPONSABLE"
echo "Laboratorio : $LABORATORIO"
echo "Fecha       : $FECHA"
echo "ID          : $ID_MUESTRA"
echo "=================================="

# Se utilizan llaves para delimitar el nombre de la variable.
# Sin llaves, Bash buscaria una variable llamada ID_MUESTRA_v1.
# Con llaves, agrega _v1 al valor de ID_MUESTRA.
