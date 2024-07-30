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
   Función Aplicar Descuento
   ```scss
   Funcion res <- Costo_Envio (peso,distancia,cantidad)
	//	Se aplica CLP$10 por Kilometro de Distancia para efectos de Envio
	//	Se aplica un 50% de Descuento al Envio
		res=(peso*distancia*cant*10)/2 
   FinFuncion
   ```
   Función Menú de Inicio
   ```scss
   Funcion res<- Menu_Inicio
		opc = 0
		Borrar Pantalla
		Escribir "+=========================================================================================+"
		Escribir "|                .___  ___.  _______  .__   __.  __    __                                 |" 
		Escribir "|                |   \/   | |   ____| | \  |  | |  |  |  |                                |"
		Escribir "|                |  \  /  | |  |__    |   \|  | |  |  |  |                                |"
		Escribir "|                |  |\/|  | |   __|   |  . `  | |  |  |  |                                |"
		Escribir "|                |  |  |  | |  |____  |  |\   | |  `--´  |                                |"
		Escribir "|                |__|  |__| |_______| |__| \__|  \______/                                 |"
		Escribir "+=========================================================================================+"
		Escribir "|   1. Revisar Inventario de Productos                                                    |"
		Escribir "|   2. Revisar Listado de Destinos                                                        |"
		Escribir "|   3. Salir                                                                              |"
		Escribir "+=========================================================================================+"
		// ingresar una opcion
		Escribir "Elija una opción (1-3): "
		Leer opc
		Borrar Pantalla
		
		Mientras opc >= 4 Hacer
			Escribir "Opción Invalida Intenta de Nuevo"
			Escribir ""
			Esperar 1 Segundos
			Borrar Pantalla
			Escribir "+=========================================================================================+"
			Escribir "|                .___  ___.  _______  .__   __.  __    __                                 |" 
			Escribir "|                |   \/   | |   ____| | \  |  | |  |  |  |                                |"
			Escribir "|                |  \  /  | |  |__    |   \|  | |  |  |  |                                |"
			Escribir "|                |  |\/|  | |   __|   |  . `  | |  |  |  |                                |"
			Escribir "|                |  |  |  | |  |____  |  |\   | |  `--´  |                                |"
			Escribir "|                |__|  |__| |_______| |__| \__|  \______/                                 |"
			Escribir "+=========================================================================================+"
			Escribir "|   1. Revisar Inventario de Productos                                                    |"
			Escribir "|   2. Revisar Listado de Destinos                                                        |"
			Escribir "|   3. Salir                                                                              |"
			Escribir "+=========================================================================================+"
			Escribir "Elija una opción (1-3): "
			Leer opc
			Borrar Pantalla
		FinMientras

		res<-opc
   FinFuncion
   ```
   Función Lugar de Envio
   ```scss
   Funcion res<-Lugar_Envio
		Definir opc2 Como Entero
		opc2=0
		Borrar Pantalla
		Escribir "(1) Interior Anillo Americo Vespucio"
		Escribir "(2) Dentro RM"
		Escribir "(3) Regiones I - XV excepto XII"
		Escribir "(4) Región XII"
		Escribir "(5) Extranjero"
		Escribir "Favor ingresar una Opción"
		
		Leer opc2
		
		
		Mientras opc2>5 y opc2<1 Hacer
			Escribir "Opción Invalida Intenta de Nuevo"
			Escribir ""
			Esperar 1 Segundos
			Borrar Pantalla
			Escribir "(1) Interior Anillo Americo Vespucio"
			Escribir "(2) Dentro RM"
			Escribir "(3) Regiones I - XV excepto XII"
			Escribir "(4) Región XII"
			Escribir "(5) Extranjero"
			Escribir "Favor ingresar una Opción"
			leer opc2
		FinMientras
		res<-opc2
   FinFuncion
   ```
   Función Rellena Espacios Vacios para calzar Tablas
   ```scss
   Funcion res<-Rellena_Espacios(dato,block_size)
		Definir esp_void Como Caracter
		Si dato>block_size
			block_size<-dato
		SiNo
			block_size<-block_size-dato
		FinSi
		Para i<-1 hasta block_size Con Paso 1
			esp_void <- Concatenar(esp_void," ")
		FinPara
		res<-esp_void
   FinFuncion
   ```
2. Se realizan las definiciones de las variables agrupadas en categorias:

Variables manejadas por el usuario
```scss
//	Variables manejadas por el usuario
		Definir pre_orig, dcto, imp_apli, peso_prod, cant_prod, dist_dest, kilometros Como Entero
		Definir Destinos_Nombres, NombresProductos, nom_prod, nom_dest Como Caracter
```

Variables de control
```scss
//	Variables de control
		Definir id_prod, id_dest, opc_menu, opc_envio Como Entero
```

Variables Variables de almacenamiento
```scss
//	Variables de almacenamiento
		Definir pre_dcto, pre_imp, pre_dcto_cant, sub_total, sub_total_red, pre_envio, pre_dest Como Real
		Definir valor_desc,valor_desc_cant, valor_imp, ajus_sen Como Real
```

Variables de dimensiones de los Arreglos
```scss
//	Variables de dimensiones de los Arreglos
		Definir filas_array_1,filas_array_2, filas_array_3, columnas_array_1, columnas_array_2 Como Entero
```

Variables para manejos de tablas
```scss
// Variables para manejos de tablas		
		Definir cont_table_cant,cont_table_prec,cont_table_total,cont_table_imp,cont_table_valor_imp Como Caracter
		Definir cont_table_prec_envio,cont_table_valor_desc, cont_table_valor_desc_cant, cont_table_ajus_sen Como Caracter
		Definir cont_table_sub_total_red,cont_table_inve_prec_envio, cont_table_inve_total Como Caracter	
		Definir cont_table_inve_prec_lis, cont_table_inve_cup_dcto, cont_table_inve_desc_cant, cont_table_inve_imp Como Caracter
```  


3. Asignaciones Iniciales:

- `id_prod = 0` Variable utilizada como contador y como identificador indice de productos.
- `pre_orig = 0` Variable para el ingreso del precio original.
- `dcto = 0` Variable para el ingreso del valor en % del cupón de descuento.
- `imp_apli = 0` Variable para el ingreso del valor en % del impuesto a aplicar.
- `peso_prod = 0` Variable para el ingreso del valor en kilos del producto (se asume como 1Kg como peso minimo).
- `nom_prod = "Na"` Variable para el ingreso de la cadena de texto asociada al nombre del producto.
- `id_dest = 0` Variable utilizada como contador y como identificador indice de destinos.
- `dist_dest = 0` Variable para el ingreso del valor en kilometros para el envio (se asume como 1Km como distancia minima).
- `pre_dest = 0` Variable de almacenamiento para la operatoria del precio de envio.
- `nom_dest = "Nada"` Variable para el ingreso de la cadena de texto asociada al nombre del destino de envio.
- `filas_array_1 = 1` Variable de control de dimensiones de arreglos.
- `filas_array_2 = 1` Variable de control de dimensiones de arreglos.
- `filas_array_3 = 1` Variable de control de dimensiones de arreglos.

4. Dimensionamiento de Arreglos:

Arreglo de Enteros para Almacenar datos de productos ingresados por el Usuario + ID
- `Dimension Inventario[filas_array_1,5]` Dimension llamada Inventario de `filas_array_1` filas y 5 columnas.
Relleno de Arreglo Inventario
```scss
//	Relleno de Arreglo Inventario	
	Para i<-1 Hasta filas_array_1 Con Paso 1
		Inventario[filas_array_1,1]<-id_prod
		Inventario[filas_array_1,2]<-pre_orig
		Inventario[filas_array_1,3]<-dcto
		Inventario[filas_array_1,4]<-imp_apli
		Inventario[filas_array_1,5]<-peso_prod
	FinPara
```

Arreglo de Cadenas para Almacenar datos Ingresados por el Usuario	
- `Dimension NombresProductos[filas_array_1]` Dimension llamada Inventario de `filas_array_1` filas.
Relleno de Arreglo NombreProductos
```scss
//	Relleno de Arreglo NombresProductos	
	Para j<-1 Hasta filas_array_1 Con Paso 1
		NombresProductos[filas_array_1]<-nom_prod
	FinPara
```
Arreglo de Enteros para Almacenar datos de envios ingresados por el Usuario + ID	
- `Dimension Destinos[filas_array_2,3]` Dimension llamada Inventario de `filas_array_2` filas y 3 columnas.
Relleno de Arreglo Destinos
```scss
//	Relleno de Arreglo Destinos	
	Para k<-1 Hasta filas_array_1 Con Paso 1
		Destinos[filas_array_2,1]<-id_dest
		Destinos[filas_array_2,2]<-dist_dest
		Destinos[filas_array_2,3]<-pre_dest
	FinPara
```

Arreglo de Cadenas para Almacenar datos de envios ingresados por el Usuario	
- `Dimension NombresDestinos[filas_array_2]` Dimension llamada Inventario de `filas_array_2` filas.
Relleno de Arreglo NombreDestinos
```scss
//	Relleno de Arreglo NombreDestinos
	Para h<-1 Hasta filas_array_1 Con Paso 1
		NombresDestinos[filas_array_2]<-nom_dest
	FinPara
```

Arreglo de Enteros para Almacenar Operatorias entre Valores de Productos y Envios	
- `Dimension Valores[filas_array_3,10]` Dimension llamada Inventario de `filas_array_3` filas y 10 columnas.
Relleno de Arreglo Valores
```scss
//Se rellena el Arreglo Valores con Operatorias entre Valores del Arreglo
				Para l<-1 hasta filas_array_3 Hacer
				//  Cantidad
					Valores[filas_array_3,1]= cant_prod
				//	Precio con Cupón de Descuento Invocando Funcion Aplicar_Dcto
					Valores[filas_array_3,2]= Aplicar_Dcto(Inventario[filas_array_1,2],Inventario[filas_array_1,3])
				//	Precio con Descuento por Cantidad Invocando Funcion Aplicar_Dcto_x_Cant
					Valores[filas_array_3,3]=Aplicar_Dcto_x_Cant (Valores[filas_array_3,2],Valores[filas_array_3,1])
				//	Precio con Impuestos Invocando Funcion Aplicar_Imp
					Valores[filas_array_3,4]=Aplicar_Imp(Valores[filas_array_3,3],Inventario[filas_array_1,4])
				//	Sub-Total
					Valores[filas_array_3,5]=Valores[filas_array_3,4]*Valores[filas_array_3,1]+Destinos[filas_array_2,2]
				//	Valor del Descuento por Cupón
					Valores[filas_array_3,6]=Valores[filas_array_3,2]-Inventario[filas_array_1,2]
				//	Valor del Descuento por Cantidad
					Valores[filas_array_3,7]=Valores[filas_array_3,3]-Valores[filas_array_3,2]
				//	Valor Impuestos Aplicados
					Valores[filas_array_3,8]=Valores[filas_array_3,4]-Valores[filas_array_3,3]
				//	Valor Ajuste Sencillo Invocando Funcion Redon y Trunc (Ambas Parte de PSeInt)
					Valores[filas_array_3,9]=redon(Valores[filas_array_3,5])-trunc(Valores[filas_array_3,5])
				//	SubTotal Redondeado Invocando Funcion Redon(Parte de PSeInt)
					Valores[filas_array_3,10]=redon(Valores[filas_array_3,5])
				FinPara
```

5. Reasignaciones de Variables para efectos de Ciclos
```scss
//	Asignacions de Variables de Arreglos para efectos de ciclos	
	filas_array_1 = 0
	filas_array_2 = 0
```

6. Despliegue en Pantalla de Banner de Presentación

```scss
// Despliegue en Pantalla de Banner de Presentación	
	Escribir ""
	Escribir ""
	Escribir ""
//	Esperar 1 Segundos
	Escribir "   _____ _      __                              __        ____                 _           "
//	Esperar 1 Segundos
	Escribir "  / ___/(_)____/ /____  ____ ___  ____ _   ____/ /__     / __ \________  _____(_)___  _____"
//	Esperar 1 Segundos
	Escribir "  \__ \/ / ___/ __/ _ \/ __ `__ \/ __ `/  / __  / _ \   / /_/ / ___/ _ \/ ___/ / __ \/ ___/"
//	Esperar 1 Segundos
	Escribir " ___/ / (__  ) /_/  __/ / / / / / /_/ /  / /_/ /  __/  / ____/ /  /  __/ /__/ / /_/ (__  )"
//	Esperar 1 Segundos
	Escribir "/____/_/____/\__/\___/_/ /_/ /_/\__,_/   \__,_/\___/  /_/   /_/   \___/\___/_/\____/____/"  
//	Esperar 1 Segundos
	Escribir ""
	Escribir ""
	Escribir "+=========================================================================================+"
	Escribir "|                Diseñado y Codificado por Alcibiades Oyazún Neilson                      |"
	Escribir "+=========================================================================================+"
	Escribir "Presione una tecla para Comenzar"
	Esperar Tecla
```
7. Despliegue en Funcion Menu_Inicio

```scss
	Escribir ""
	Escribir ""
	Escribir ""
// Se Almacena una Variable para volver al Menú	
	opc_return=1
//	Se ejecuta la condicion de Retorno al Menú	
	Mientras opc_return<=2 Hacer
//	Condición para Seguir al Menú
	Si opc_return=1 Entonces
		//	Se invoca a la Función Menu_Inicio que el Retornos se Almacenara en opc_menu
		opc_menu = Menu_Inicio
		//	Selección de Caso Según opc_menu
```
Para efectos de ciclos se asigna `opc_return=1`
Se ejecuta el ciclo mientras por la asignación anterior
Se ejecuta la función `Menu_Inicio`
El resultado de la función se almacena en la variable `opc_menu`






```scss


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
