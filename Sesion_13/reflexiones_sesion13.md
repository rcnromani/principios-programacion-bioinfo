# Reflexiones - Sesion 13
Autor: Rodolfo Carlo Nuñez Romani

## Actividad C

### Pregunta 1
Al ejecutar el script dos veces, las carpetas y los archivos no se duplican. Esto ocurre porque mkdir -p permite trabajar con carpetas existentes sin generar errores. Ademas, touch actualiza la fecha de modificacion de los archivos existentes.

### Pregunta 2
Para trabajar con 200 muestras, solo cambiaria el limite del bucle de I<=5 a I<=200. Sin utilizar bucles, necesitaria escribir 200 comandos touch para crear los archivos individualmente.

## Actividad D

### Pregunta 1
El total se calcula dentro del bucle porque cada iteracion procesa una secuencia diferente y suma su longitud. Asi se obtiene el total de bases sin realizar los calculos manualmente.

### Pregunta 2
Si utilizara TOTAL=LONG, se asignaria literalmente la palabra LONG y no se acumularian las longitudes. Por eso, el mensaje de bases totales mostraria LONG. En el calculo aritmetico del promedio, Bash evaluaria LONG como la variable que contiene 16, obteniendo un promedio de 4 bp.

## Actividad E

### Pregunta 1
La serie termina en 1:8 porque la condicion establece D<=8. Despues de 8, el siguiente valor seria 16, que supera el limite establecido.

### Pregunta 2
D*=2 multiplica el valor por dos en cada iteracion y produce 1, 2, 4, 8. En cambio, D+=2 aumenta el valor en dos unidades y produce 1, 3, 5, 7 con el mismo limite.

## Bonus

Se agrego una quinta secuencia de 10 nucleotidos mediante += en ambos arrays. El total aumento de 56 a 66 bases y el promedio entero cambio de 14 a 13 bp.
