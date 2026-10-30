
#!/bin/bash
# Autor: Rodolfo Nuñez Romani
# Fecha: 30/10/2026
# Descripcion: Extrae y organiza genes de resistencia bacteriana.

echo "=== LECTOR DE GENES - OPERACION KPC ==="
echo ""

read -p "Archivo del aislado : " archivo
read -p "Genes detectados    : " genes

id=${archivo%.fasta}

gen_principal=${genes%%,*}
ultimo_gen=${genes##*,}
resto_genes=${genes#*,}

echo ""
echo "=== INFORME DE RESISTENCIA - $id ==="
echo "Gen principal       : $gen_principal"
echo "Ultimo gen          : $ultimo_gen"
echo "Resto de la lista   : $resto_genes"
