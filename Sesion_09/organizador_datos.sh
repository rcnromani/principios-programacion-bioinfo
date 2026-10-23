#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Fecha: 23/10/2026
# Descripcion: Crea directorios y archivos iniciales para la Operacion KPC.

PROYECTO='operacion_KPC'
echo "Montando base de operaciones: $PROYECTO ..."
mkdir -p "$PROYECTO"/{datos_crudos,datos_procesados,resultados,scripts,logs,referencias}
echo 'Directorio para almacenar secuencias originales.' > "$PROYECTO/datos_crudos/LEEME.txt"
echo "Registro inicial creado el $(date)" > "$PROYECTO/logs/registro.log"
find "$PROYECTO" | sort
echo 'Base de operaciones lista. Esperando secuencias...'
