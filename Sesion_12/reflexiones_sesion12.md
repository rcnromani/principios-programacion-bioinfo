# Reflexiones - Sesion 12

Autor: Rodolfo Carlo Nuñez Romani

## Ejercicio 1: PATH permanente

Si agregamos dos veces la misma ruta en .bashrc, el PATH contendra entradas duplicadas. El programa normalmente seguira funcionando, pero la configuracion sera redundante.

La diferencia entre export PATH en la terminal y agregarlo a .bashrc es que la primera modificacion es temporal, mientras que la segunda se aplica a nuevas terminales interactivas de Bash.

## Mision 4: Filtrar el expediente

El patron ^castell permite identificar los hospitales de Castellon porque busca al inicio de la linea. La opcion -i permite ignorar las diferencias entre mayusculas y minusculas.

Para identificar el Biobanco de Barcelona se utiliza una expresion regular que reconoce los dos primeros campos y exige que Barcelona aparezca en la tercera columna.

Para excluir Usher3 se utiliza grep -v. La opcion -i permite reconocer el termino independientemente de sus mayusculas.

El codigo de salida 0 indica que grep encontro coincidencias.

## Bonus

La expresion usher(1|2) permite identificar Usher1 y Usher2 mediante alternancia. Se utiliza grep -E para interpretar la expresion regular extendida y -i para ignorar mayusculas.
