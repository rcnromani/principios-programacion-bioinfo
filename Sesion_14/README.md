# Sesión 14 - Operación Expediente Genoma: Fase 3

## Descripción

Aplicación de condicionales if, elif y else en Bash para verificar
archivos, clasificar concentraciones de ADN, identificar secuencias
que comienzan con ATG y buscar nombres de genes de resistencia.

## Autor

Rodolfo Carlo Nuñez Romani

Clave de agente: KPC-001

Universidad Peruana de Ciencias Aplicadas (UPC)

Curso: Principios de Programación en Bioinformática

## Requisitos

- Bash 4.3 o superior.
- GNU grep.
- Entorno Linux o Google Cloud Shell.

## Estructura del directorio

```text
Sesion_14/
├── README.md
├── muestras.fasta
├── vacio.fasta
├── resistencias.txt
├── mision8_verificador.sh
├── mision9_concentraciones.sh
├── mision10_detector_atg.sh
├── bonus_resistencias.sh
└── Reflexiones_sesion14.md
```

## Misión 8: Verificador de expediente

### Uso

```bash
bash mision8_verificador.sh
```

Entrada: archivos FASTA de prueba.

Salida: clasificación según existencia y contenido.

Resultado esperado:

```text
muestras.fasta: OK
vacio.fasta: VACÍO
faltante.fasta: FALTA
```

El archivo faltante.fasta no debe existir para comprobar
el funcionamiento del condicional.

## Misión 9: Clasificador de concentraciones

### Uso

```bash
bash mision9_concentraciones.sh
```

Entrada: arrays de identificadores y concentraciones de ADN.

Salida: clasificación individual y totales por categoría.

Resultado esperado:

```text
P01: 12 ng/µL → baja
P02: 25 ng/µL → media
P03: 50 ng/µL → media
P04: 51 ng/µL → alta
P05: 8 ng/µL → baja
Baja: 2 | Media: 2 | Alta: 1
```

## Misión 10: Detector de codón de inicio

### Uso

```bash
bash mision10_detector_atg.sh
```

Entrada: arrays de identificadores y secuencias nucleotídicas.

Salida: detección del motivo ATG al inicio de cada secuencia.

Resultado esperado:

```text
s1: inicia con ATG
s2: no inicia con ATG
s3: inicia con ATG
s4: no inicia con ATG
s5: inicia con ATG
Secuencias con ATG: 3
```

## Bonus: Detector de genes de resistencia

### Uso

```bash
bash bonus_resistencias.sh
```

Entrada: archivo resistencias.txt y array de genes.

Salida: presencia o ausencia de los nombres buscados.

Resultado esperado:

```text
mecA: encontrado
vanA: encontrado
tetM: no encontrado
```

## Aplicación bioinformática

Los condicionales permiten automatizar decisiones durante el
procesamiento de datos biológicos, verificar archivos de entrada,
clasificar muestras según criterios definidos y buscar patrones
o identificadores en secuencias y reportes de anotación.

Los datos utilizados corresponden a ejemplos didácticos.
