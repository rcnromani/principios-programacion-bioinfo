
#!/bin/bash
# Autor: Rodolfo Carlo Nuñez Romani
# Clave de agente: COMPLETAR
# Actividad C: Estructura de un experimento de PCR

mkdir -p Experimento_RNA

for CARPETA in raw_data processed results logs; do
    mkdir -p "Experimento_RNA/$CARPETA"
    echo "Creado: Experimento_RNA/$CARPETA/"
done

for ((I=1; I<=5; I++)); do
    touch "Experimento_RNA/raw_data/muestra_${I}.fastq"
    echo "Archivo: muestra_${I}.fastq"
done

CANTIDAD=$(ls Experimento_RNA/raw_data | wc -l)

echo "Archivos en raw_data: $CANTIDAD"
