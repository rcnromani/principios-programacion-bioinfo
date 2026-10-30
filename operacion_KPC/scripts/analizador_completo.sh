#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Fecha: 30/10/2026
# Descripcion: Genera un informe completo de los aislados de la Operacion KPC.

echo "=== ANALIZADOR COMPLETO - OPERACION KPC ==="
echo ""

read -p "ID del aislado: " id
read -p "Genes detectados (separados por comas): " genes
read -p "Fecha del analisis (DD/MM/AAAA): " fecha

archivo="operacion_KPC/datos_crudos/aislados_uci.fasta"

secuencia=$(grep -A1 "^>${id}|" "$archivo" | tail -1)

if [ -z "$secuencia" ]; then
    echo "Error: no se encontro el aislado $id"
    exit 1
fi

# Analisis de la secuencia
longitud=${#secuencia}
inicio=${secuencia:0:3}
final=${secuencia: -3}

# Simulacion de transcripcion
arn=${secuencia//T/U}

# Analisis de genes de resistencia
gen_principal=${genes%%,*}
ultimo_gen=${genes##*,}
resto_genes=${genes#*,}

# Crear carpeta de resultados
mkdir -p operacion_KPC/resultados

# Ruta del informe
reporte="operacion_KPC/resultados/reporte_${id}.txt"

# Generar informe mediante redireccion
echo "========================================" > "$reporte"
echo "INFORME - OPERACION KPC" >> "$reporte"
echo "========================================" >> "$reporte"
echo "Generado el: $(date)" >> "$reporte"
echo "Fecha del analisis: $fecha" >> "$reporte"
echo "Aislado: $id" >> "$reporte"
echo "" >> "$reporte"

echo "=== ANALISIS DE SECUENCIA ===" >> "$reporte"
echo "ADN: $secuencia" >> "$reporte"
echo "Longitud exacta: $longitud nucleotidos" >> "$reporte"
echo "Inicio 5': $inicio" >> "$reporte"
echo "Extremo 3': $final" >> "$reporte"
echo "" >> "$reporte"

echo "=== TRANSCRIPCION ===" >> "$reporte"
echo "ARNm: $arn" >> "$reporte"
echo "Longitud ARN: ${#arn} bases" >> "$reporte"
echo "" >> "$reporte"

echo "=== GENES DE RESISTENCIA ===" >> "$reporte"
echo "Lista completa: $genes" >> "$reporte"
echo "Gen principal: $gen_principal" >> "$reporte"
echo "Ultimo gen: $ultimo_gen" >> "$reporte"
echo "Resto de genes: $resto_genes" >> "$reporte"
echo "" >> "$reporte"

echo "Analisis completado." >> "$reporte"

# Mostrar el informe generado
echo ""
echo "Informe guardado en: $reporte"
echo ""
cat "$reporte"
