#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Fecha: 23/10/2026
# Descripcion: Muestra informacion basica del sistema en Google Cloud Shell.

echo '=========================================='
echo '   INFORME DE RECONOCIMIENTO DEL SERVIDOR'
echo '=========================================='
echo "Agente (usuario)   : $(whoami)"
echo "Fecha y hora       : $(date)"
echo "Ubicacion actual   : $(pwd)"
echo "Espacio ocupado    : $(du -sh .)"
echo ''
echo 'Archivos encontrados en el terreno:'
ls -lh
