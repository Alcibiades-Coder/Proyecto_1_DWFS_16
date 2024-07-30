![Banner](./images/banner.png) 

# PROYECTO 1: Algoritmo de Sistema de Costos

## **ÍNDICE**

* [1. Intro](#1-intro)
* [2. Demo](#2-demo)
* [3. ¿Qué construirás?](#3-qu%C3%A9-construir%C3%A1s)
* [4. Objetivos de Aprendizaje](#4-objetivos-de-aprendizaje)
* [5. Requisitos](#5-requisitos-y-entregables)
* [6. Criterios de evaluación](#6-criterios-de-evaluaci%C3%B3n)
* [7. Entregas](#7-entregas)

****

## 1. Intro

En este primer proyecto, se aplicaron los conceptos de algoritmos, programación estructurada, control de flujo, arreglos y el uso de Git y GitHub.

Se desarrolló el algoritmo utilizando pseudocódigo y el software PSeInt para resolver un problema específico además de mejorar y agregar funciones enfocadas a un sistema de precios para negocios pequeños donde aun la programación se hace pensando en la famosa Okidata 320 Turbo, practicando habilidades en programación y cumpliendo con los requisitos del proyecto.

****

## 2. Objetivos de aprendizaje

El objetivo principal de este proyecto fue construir un pseudocódigo que permite:

- Entender y aplicar conceptos básicos de algoritmos y programación estructurada.
- Utilizar variables, constantes, operadores aritméticos y de comparación.
- Implementar control de flujo mediante condiciones.
- Crear y Utilizar funciones con y sin variables de retorno
- Dimensionar, redimensionar, llenar y recorrer arreglos unidimensionales y bidimensionales
- Crear relaciones de posición entre arreglos de distintos tipos
- Despliegar GUI Básicas para reprentar menús, boletas e inventarios.
- Utilizar Git como sistema de control de versiones y colaborar en GitHub.

****

## 3. Demo

Se puedes descargar el codigo del Algoritmo en PSeInt en este vínculo: [LINK](https://github.com/UDDBootcamp/7M_FULLSTACK_M1_PROY/tree/master/demo)

Al acceder, observarás que se resuelve la problematica presentada con un enfoque de este proyecto orientado a un negocio pequeño donde un sistema de precios resuelve de form simple el almacenamiento temporal de lo vendido durante la ejecución del codigo, donde ademas se puede consultar un pequeño inventario y realizar calculos de precios, descuentos, impuestos y calcular costos de envios.

La intención del Algoritmo fue demostrar lo comprendiendo en clases, el planteamiento del problema y una posible solución.

****

## 4. ¿Qué se construyo en este proyecto?

Se construyó un algoritmo en el sofware PSeInt que simula un sistema de precios para calcular el costo de un producto con base en su precio original, el porcentaje de descuento aplicado ya sea por cupones o cantidad y el costo de envio. El algoritmo cumple con los siguientes requisitos propuestos en el proyecto y tienes funcionalidades de valor agregado que tambien contribuyen a demostrar lo aprendido en clases:

- (Funcionalidad Agregada) Desplegar una Animación basado en funciones de temporizadores
    - Se despliega el Banner ASCII "Sistema de Precios" esperando un segundo entre lineas y esperando un tecla para continuar.
- (Funcionalidad Agregada) Crear un Menu HOME para navegar entre subprocesos del codigo.
    - Se despliega un menu con Banner ASCII "MENU" y se creo una función que despliega y obtiene las opciones de navegación.
    - Según la opción de navegación de procede a los subprocesos Ingreso de Compra, Inventario y Salida.
- (Requisito Original) Leer el precio original del producto.
    - Se almacenan el Precio Original en Variables y en Arreglos para su manejo.
- (Requisito Original) Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
    - Se almacenan los descuentos por cupón en Variables y en Arreglos para su manejo.
- (Requisito Original) Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
    - Se almacenan los impuestos en Variables y en Arreglos para su manejo.
- (Requisito Original) Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
    - Se almacenan las cantidades de productos en Variables y en Arreglos para su manejo, se crea y emplea una funcion para aplicar descuentos por cantidad de
      productos a comprar.
- (Requisito Original) Calcular el costo de envío basado en el destino y el peso del paquete.
    - Se crea una función para desplegar y leer clas siguientes opciones:
          (1) Interior Anillo Americo Vespucio
		      (2) Dentro RM
		      (3) Regiones I - XV excepto XII
		      (4) Región XII
		      (5) Extranjero
    - Según el resultado de la función
          (1) -Se fija el precio de envio en $0 -Se almacena en un arreglo como nombre del destino "In-Vesp" -Se almacena en un arreglo el precio de envio.
		      (2) -Se fija el precio de envio en $2800 -Se almacena en un arreglo como nombre del destino "In-RM" -Se almacena en un arreglo el precio de envio.
		      (3) -Se fija el precio de envio en $7200 -Se almacena en un arreglo como nombre del destino "I-XV s/XII" -Se almacena en un arreglo el precio de envio.
		      (4) -Se fija el precio de envio en $12000 -Se almacena en un arreglo como nombre del destino "XII" -Se almacena en un arreglo el precio de envio.
		      (5) -Se solicita ingresar nombre del destino y distancia -Se multiplica la distancia * $50 y al resultado se le adiciona $12000.
              -Se almacenan en arreglos de diferentes tipos (Caracter y Entero) el nombre del destino y el resultado de la operación de distancia.  
- (Requisito Original) Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
    - Con las variables de entrada ya operadas y almacenadas en arreglos se procede a realizar calculos (precio con descuento, impuestos, descuento por cantidad y       costo de envío) entre posiciones de los arreglos y almacenadas en variables para operación antes del despliegue en pantalla.
    - Se despliega en pantalla en formato boleta SII utilizando condigo ASCII, donde se crea función para rellenar espacios de caracteres vacio para ajuste y
      formato en pantalla.
    - Se despliega un Banner ASCII para efectos de formato.
- (Requisito Original) Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).
    - Se despliegan en detalle formato boleta SII: SubTotales, Valor Descuentos por Cupon, Valor Descuento por Cantidad, Total Impuestos, Ajuste Sencillo según
      ley N°20956 y Totales.
- (Funcionalidad Agregada) Crear un sistema de consulta de compras realizadas durante la ejecución del codigo.
    - Se crea un subproceso de inventario, para consultar compras ya realizadas para efectos de información que mediante la consulta de los arreglos ya creados
      despliega los primeros 50 registros ingresados.

## Solución explicada paso a paso

1. Primero, se crean las siguientes funciones.
   Función Aplicar Descuento
   ```scss
    Funcion res <- Aplicar_Dcto (precio,descuento)
	  	res= precio - ((precio*descuento)/100)
	  FinFuncion
   ```
   Función Aplicar Impuesto
    ```scss
    Funcion res <- Aplicar_Imp (precio, impuesto)
	  	res=precio + ((precio*impuesto)/100)
  	FinFuncion
   ```
    Función Aplicar Descuento por Cantidad
   ```scss
    Funcion res <- Aplicar_Dcto_x_Cant (precio,cantidad)
    //	De 2 a 4 Productos se aplica 5% de Descuento
    //	De 5 a 49 Productos se aplica 10% de Descuento
	  //	De 50 o más Productos se aplica 25% de Descuento
	  // 	Por 1 solo Productos no se Aplica Descuento
		  Si cantidad >= 2
			  Si cantidad >= 5
				  Si cantidad >= 50
					  res= precio - ((precio*25)/100)
				  SiNo
					  res= precio - ((precio*10)/100)
				  FinSi
			  SiNo
				  res= precio - ((precio*5)/100)
			  FinSi
		  Sino
			  res=precio
		  FinSi
	  FinFuncion
   ```
- `nombre_estudiante` es una cadena que almacenará el nombre del estudiante.
- `calificaciones` es un arreglo unidimensional de enteros que almacenará las calificaciones de las materias.
- `resultados` es un arreglo unidimensional de cadenas que almacenará los resultados de las materias (aprobado o reprobado).
- `i`, `suma` y `promedio` son enteros que se usarán para controlar los bucles y realizar cálculos.

```scss
definir nombre_estudiante como cadena
definir calificaciones[3] como entero
definir resultados[3] como cadena
definir i, suma, promedio como entero
```


2. Se solicita al usuario que ingrese el nombre del estudiante:

- Se muestra un mensaje en la pantalla pidiendo el nombre del estudiante.
- El nombre del estudiante se lee y se guarda en la variable `nombre_estudiante`.

```scss
escribir "Introduce el nombre del estudiante: "
leer nombre_estudiante
```


3. Se utiliza un bucle `Para` para leer las calificaciones de las materias:

- El bucle se ejecuta 3 veces (desde `i = 0` hasta `i = 2`) para leer las calificaciones de las 3 materias.
- En cada iteración del bucle, se solicita al usuario que ingrese la calificación de la materia actual (i + 1) y se guarda en el arreglo `calificaciones`.

```scss
para i desde 0 hasta 2 hacer
    escribir "Introduce la calificación de la materia ", i + 1, ": "
    leer calificaciones[i]
fin para
```


4. Se realiza la suma de las calificaciones y se calcula el promedio:

- Se inicializa la variable `suma` en 0.
- Se utiliza otro bucle `Para` para recorrer el arreglo calificaciones y sumar sus elementos.
- En cada iteración del bucle, se suma la calificación actual (`calificaciones[i]`) a la variable `suma`.
- Después de recorrer el arreglo, se divide la suma entre 3 (el número de materias) y se guarda el resultado en la variable `promedio`.

```scss
suma <- 0
para i desde 0 hasta 2 hacer
    suma <- suma + calificaciones[i]
fin para
promedio <- suma / 3

```

5. Se determina si el estudiante ha aprobado o reprobado cada materia:

- Se utiliza un bucle `Para` para recorrer el arreglo calificaciones y evaluar cada calificación.
. En cada iteración del bucle, se utiliza una estructura de control Si para evaluar si la calificación actual (`calificaciones[i]`) es mayor o igual a 6.
- Si la calificación es mayor o igual a 6, se guarda la cadena "Aprobado" en el arreglo resultados en la posición correspondiente.
- Si la calificación es menor a 6, se guarda la cadena "Reprobado" en el arreglo resultados en la posición correspondiente.

```scss
para i desde 0 hasta 2 hacer
    si (calificaciones[i] >= 6) entonces
        resultados[i] <- "Aprobado"
    sino
        resultados[i] <- "Reprobado"
    fin si
fin para

```

6. Finalmente, se muestran los resultados:

- Se escribe el nombre del estudiante en la pantalla.
- Se utiliza un bucle `Para` para recorrer los arreglos calificaciones y resultados y mostrar la calificación - y el resultado de cada materia.
- Se escribe el promedio del estudiante en la pantalla.

```scss
escribir "Nombre del estudiante: ", nombre_estudiante
para i desde 0 hasta 2 hacer
    escribir "Calificación de la materia ", i + 1, ": ", calificaciones[i], " - ", resultados[i]
fin para
escribir "Promedio: ", promedio
```


La solución en conjunto sería:

```scss
definir nombre_estudiante como cadena
definir calificaciones[3] como entero
definir resultados[3] como cadena
definir i, suma, promedio como entero

escribir "Introduce el nombre del estudiante: "
leer nombre_estudiante

para i desde 0 hasta 2 hacer
    escribir "Introduce la calificación de la materia ", i + 1, ": "
    leer calificaciones[i]
fin para

suma <- 0
para i desde 0 hasta 2 hacer
    suma <- suma + calificaciones[i]
fin para
promedio <- suma / 3

para i desde 0 hasta 2 hacer
    si (calificaciones[i] >= 6) entonces
        resultados[i] <- "Aprobado"
    sino
        resultados[i] <- "Reprobado"
    fin si
fin para

escribir "Nombre del estudiante: ", nombre_estudiante
para i desde 0 hasta 2 hacer
    escribir "Calificación de la materia ", i + 1, ": ", calificaciones[i], " - ", resultados[i]
fin para
escribir "Promedio: ", promedio

```

**Validación** Se probara el algoritmo en base a la idea de que un cliente desea comprar un par de zapatos deportivos en línea. 

Los siguientes son los detalles del producto y la información del cliente:

- Precio original: $100
- Cupón de descuento: 10% de descuento
- IVA (impuesto al valor agregado): 12%
- Cantidad: 2 pares de zapatos deportivos
- Peso del paquete: 3 kg
- Destino del envío: Nueva York

De acuerdo con los requisitos del proyecto, el algoritmo deberá realizar lo siguiente:

- Leer el precio original del producto: $100
- Aplicar el descuento del cupón: 10% de descuento, es decir, el precio con descuento será $90.
- Aplicar el IVA: 12% del precio con descuento, es decir, $90 * 1.12 = $100.80.
- Aplicar el descuento por cantidad (2 pares de zapatos): 5% de descuento, es decir, $100.80 * 0.95 = $95.76.
- Calcular el costo de envío basado en el peso y el destino: $10 (costo fijo) + $2 * 3 kg = $16.
- Calcular el costo final del producto: ($95.76 * 2) + $16 = $207.52.

Al final, el algoritmo deberá mostrar el costo final del producto ($207.52) y desglosar sus componentes: descuento, impuestos, descuento por cantidad y costo de envío.

Subirás tu solución a un repositorio de GitHub, el cual compartirás con tu equipo educativo, posteriormente.

****

## 5. Requisitos y entregables    

Usa esta lista para saber los requisitos mínimos del proyecto:

### GENERAL

- [ ] Realizarse de manera individual
- [ ] Leer el precio original del producto.
- [ ] Leer el porcentaje de descuento aplicado.
- [ ] Calcular el precio final del producto después de aplicar el descuento.
- [ ] Mostrar el precio final del producto.
### CONTROL DE VERSIONES
- [ ] Crear un repositorio en GitHub y subir el proyecto al mismo.

### ENTREGA A TIEMPO
- [ ] Entregar a tiempo el proyecto.

****

## 6. Criterios de evaluación

A partir de los requisitos, tu % estará definido de esta forma:

| ÁREA       | % DEL TOTAL |
| ------------- |:-------------:|
| Implementación de operaciones aritméticas y operadores de comparación      | 20%     |
| Implementación de control de flujo: condiciones y bucles      | 30%     |
| Uso de arreglos unidimensionales y/o bidimensionales | 20%      |
| Uso de Git y GitHub en el proyecto | 15%      |
| Entrega a tiempo | 15%      |

****

## 7. Entregas

Crea un repositorio en GitHub para este proyecto y añade un archivo de pseudocódigo que resuelva el problema propuesto. Al finalizar, comparte el enlace al repositorio con los instructores para su revisión.

- **Definición de fechas.** Habla con tus coaches sobre el periodo de entregas del proyecto.

- **Cumple con los requisitos y entregables.** Debes verificar que cumplas con todo lo que listamos en esta sección y tomes en cuenta el tiempo establecido para ello, ya que de esto depende que obtengas tu insignia.
