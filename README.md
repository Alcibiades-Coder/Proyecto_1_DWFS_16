
# PROYECTO 1: Algoritmo de Sistema de Costos

## **ÍNDICE**

* [1. Intro]
* [2. Objetivos de Aprendizaje]
* [3. Demo]
* [4. ¿Qué se construyó en este proyecto?]
* [5. Solución Paso a Paso]
* [6. Validación]
* [7. Requisitos y entregables]
* [8. Criterios de evaluación]
* [8. Entregas]

****

## 1. Intro

En este primer proyecto, se aplicaron los conceptos de algoritmos, programación estructurada, control de flujo, arreglos y el uso de Git y GitHub.

Se desarrolló el algoritmo utilizando pseudocódigo y el software PSeInt para resolver un problema específico además de mejorar y agregar funciones enfocadas a un sistema de precios para negocios pequeños donde aún la programación se hace pensando en la famosa Okidata 320 Turbo, practicando habilidades en programación y cumpliendo con los requisitos del proyecto.

****

## 2. Objetivos de aprendizaje

El objetivo principal de este proyecto fue construir un pseudocódigo que permite:

- Entender y aplicar conceptos básicos de algoritmos y programación estructurada.
- Utilizar variables, constantes, operadores aritméticos y de comparación.
- Implementar control de flujo mediante condiciones.
- Crear y Utilizar funciones con y sin variables de retorno
- Dimensionar, redimensionar, llenar y recorrer arreglos unidimensionales y bidimensionales
- Crear relaciones de posición entre arreglos de distintos tipos
- Desplegar GUI Básicas para representar menús, boletas e inventarios.
- Utilizar Git como sistema de control de versiones y colaborar en GitHub.

****

## 3. Demo

Se puedes descargar el código del Algoritmo en PSeInt en este vínculo: [LINK](https://github.com/Alcibiades-Coder/Proyecto_1_DWFS_16/blob/main/Proyecto%201%20-%20Algoritmo%20de%20Sistema%20de%20Costos%20-%20Alcibiades%20Oyarzun%20DWFS16.psc)

Al acceder, observarás que se resuelve la problemática presentada con un enfoque de este proyecto orientado a un negocio pequeño donde un sistema de precios resuelve de forma simple el almacenamiento temporal de lo vendido durante la ejecución del código, donde además se puede consultar un pequeño inventario y realizar cálculos de precios, descuentos, impuestos y calcular costos de envíos.

La intención del Algoritmo fue demostrar lo comprendiendo en clases, el planteamiento del problema y una posible solución.

****

## 4. ¿Qué se construyó en este proyecto?

Se construyó un algoritmo en el software PSeInt que simula un sistema de precios para calcular el costo de un producto con base en su precio original, el porcentaje de descuento aplicado ya sea por cupones o cantidad y el costo de envió. El algoritmo cumple con los siguientes requisitos propuestos en el proyecto y tienes funcionalidades de valor agregado que también contribuyen a demostrar lo aprendido en clases:

- (Funcionalidad Agregada) Desplegar una Animación basado en funciones de temporizadores
    - Se despliega el Banner ASCII "Sistema de Precios" esperando un segundo entre líneas y esperando una tecla para continuar.
- (Funcionalidad Agregada) Crear un Menú HOME para navegar entre subprocesos del código.
    - Se despliega un menú con Banner ASCII "MENU" y se creó una función que despliega y obtiene las opciones de navegación.
    - Según la opción de navegación de proceder a los subprocesos Ingreso de Compra, Inventario y Salida.
- (Requisito Original) Leer el precio original del producto.
    - Se almacenan el Precio Original en Variables y en Arreglos para su manejo.
- (Requisito Original) Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
    - Se almacenan los descuentos por cupón en Variables y en Arreglos para su manejo.
- (Requisito Original) Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
    - Se almacenan los impuestos en Variables y en Arreglos para su manejo.
- (Requisito Original) Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
    - Se almacenan las cantidades de productos en Variables y en Arreglos para su manejo, se crea y emplea una función para aplicar descuentos por cantidad de
      productos a comprar.
- (Requisito Original) Calcular el costo de envío basado en el destino y el peso del paquete.
    - Se crea una función para desplegar y leer las siguientes opciones:
          (1) Interior Anillo Américo Vespucio
		      (2) Dentro RM
		      (3) Regiones I - XV excepto XII
		      (4) Región XII
		      (5) Extranjero
    - Según el resultado de la función
          (1) -Se fija el precio de envío en $0 -Se almacena en un arreglo como nombre del destino "In-Vesp" -Se almacena en un arreglo el precio de envío.
		      (2) -Se fija el precio de envío en $2800 -Se almacena en un arreglo como nombre del destino "In-RM" -Se almacena en un arreglo el precio de envío.
		      (3) -Se fija el precio de envío en $7200 -Se almacena en un arreglo como nombre del destino "I-XV s/XII" -Se almacena en un arreglo el precio de envío.
		      (4) -Se fija el precio de envío en $12000 -Se almacena en un arreglo como nombre del destino "XII" -Se almacena en un arreglo el precio de envío.
		      (5) -Se solicita ingresar nombre del destino y distancia -Se multiplica la distancia * $50 y al resultado se le adiciona $12000.
              -Se almacenan en arreglos de diferentes tipos (Carácter y Entero) el nombre del destino y el resultado de la operación de distancia.  
- (Requisito Original) Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
    - Con las variables de entrada ya operadas y almacenadas en arreglos se procede a realizar cálculos (precio con descuento, impuestos, descuento por cantidad y       costo de envío) entre posiciones de los arreglos y almacenadas en variables para operación antes del despliegue en pantalla.
    - Se despliega en pantalla en formato boleta SII utilizando condigo ASCII, donde se crea función para rellenar espacios de caracteres vacío para ajuste y
      formato en pantalla.
    - Se despliega un Banner ASCII para efectos de formato.
- (Requisito Original) Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).
    - Se despliegan en detalle formato boleta SII: SubTotales, Valor Descuentos por Cupón, Valor Descuento por Cantidad, Total Impuestos, Ajuste Sencillo según
      ley N°20956 y Totales.
- (Funcionalidad Agregada) Crear un sistema de consulta de compras realizadas durante la ejecución del código.
    - Se crea un subproceso de inventario, para consultar compras ya realizadas para efectos de información que mediante la consulta de los arreglos ya creados
      despliega los primeros 50 registros ingresados.

## 5. Solución explicada paso a paso

1. Primero, se crean las siguientes funciones.
  - Función Aplicar Descuento
   ```scss
    Funcion res <- Aplicar_Dcto (precio,descuento)
	  	res= precio - ((precio*descuento)/100)
	  FinFuncion
   ```
  - Función Aplicar Impuesto
   ```scss
    Funcion res <- Aplicar_Imp (precio, impuesto)
	  	res=precio + ((precio*impuesto)/100)
  	FinFuncion
   ```
  - Función Aplicar Descuento por Cantidad
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
  -  Función Aplicar Descuento
   ```scss
   Funcion res <- Costo_Envio (peso,distancia,cantidad)
	//	Se aplica CLP$10 por Kilometro de Distancia para efectos de Envio
	//	Se aplica un 50% de Descuento al Envio
		res=(peso*distancia*cant*10)/2 
   FinFuncion
   ```
  - Función Menú de Inicio
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
  - Función Lugar de Envio
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
  - Función Rellena Espacios Vacios para calzar Tablas
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

  - Variables manejadas por el usuario
```scss
//	Variables manejadas por el usuario
		Definir pre_orig, dcto, imp_apli, peso_prod, cant_prod, dist_dest, kilometros Como Entero
		Definir Destinos_Nombres, NombresProductos, nom_prod, nom_dest Como Caracter
```

  - Variables de control
```scss
//	Variables de control
		Definir id_prod, id_dest, opc_menu, opc_envio Como Entero
```

  - Variables de almacenamiento
```scss
//	Variables de almacenamiento
		Definir pre_dcto, pre_imp, pre_dcto_cant, sub_total, sub_total_red, pre_envio, pre_dest Como Real
		Definir valor_desc,valor_desc_cant, valor_imp, ajus_sen Como Real
```

  - Variables de dimensiones de los Arreglos
```scss
//	Variables de dimensiones de los Arreglos
		Definir filas_array_1,filas_array_2, filas_array_3, columnas_array_1, columnas_array_2 Como Entero
```

  - Variables para manejos de tablas
```scss
// Variables para manejos de tablas		
		Definir cont_table_cant,cont_table_prec,cont_table_total,cont_table_imp,cont_table_valor_imp Como Caracter
		Definir cont_table_prec_envio,cont_table_valor_desc, cont_table_valor_desc_cant, cont_table_ajus_sen Como Caracter
		Definir cont_table_sub_total_red,cont_table_inve_prec_envio, cont_table_inve_total Como Caracter	
		Definir cont_table_inve_prec_lis, cont_table_inve_cup_dcto, cont_table_inve_desc_cant, cont_table_inve_imp Como Caracter
```  


3. Asignaciones Iniciales:

- `id_prod = 0` Variable utilizada como contador y como identificador índice de productos.
- `pre_orig = 0` Variable para el ingreso del precio original.
- `dcto = 0` Variable para el ingreso del valor en % del cupón de descuento.
- `imp_apli = 0` Variable para el ingreso del valor en % del impuesto a aplicar.
- `peso_prod = 0` Variable para el ingreso del valor en kilos del producto (se asume como 1Kg como peso mínimo).
- `nom_prod = "Na"` Variable para el ingreso de la cadena de texto asociada al nombre del producto.
- `id_dest = 0` Variable utilizada como contador y como identificador índice de destinos.
- `dist_dest = 0` Variable para el ingreso del valor en kilometros para el envío (se asume como 1Km como distancia mínima).
- `pre_dest = 0` Variable de almacenamiento para la operatoria del precio de envío.
- `nom_dest = "Nada"` Variable para el ingreso de la cadena de texto asociada al nombre del destino de envío.
- `filas_array_1 = 1` Variable de control de dimensiones de arreglos.
- `filas_array_2 = 1` Variable de control de dimensiones de arreglos.
- `filas_array_3 = 1` Variable de control de dimensiones de arreglos.

4. Dimensionamiento de Arreglos:

  - Arreglo de Enteros para Almacenar datos de productos ingresados por el Usuario + ID
	- `Dimension Inventario[filas_array_1,5]` Dimension llamada Inventario de `filas_array_1` filas y 5 columnas.
  - Relleno de Arreglo Inventario
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

  - Arreglo de Cadenas para Almacenar datos Ingresados por el Usuario	
	- `Dimension NombresProductos[filas_array_1]` Dimension llamada Inventario de `filas_array_1` filas.
  - Relleno de Arreglo NombreProductos
```scss
//	Relleno de Arreglo NombresProductos	
	Para j<-1 Hasta filas_array_1 Con Paso 1
		NombresProductos[filas_array_1]<-nom_prod
	FinPara
```
  - Arreglo de Enteros para Almacenar datos de envios ingresados por el Usuario + ID	
	- `Dimension Destinos[filas_array_2,3]` Dimension llamada Inventario de `filas_array_2` filas y 3 columnas.
  - Relleno de Arreglo Destinos
```scss
//	Relleno de Arreglo Destinos	
	Para k<-1 Hasta filas_array_1 Con Paso 1
		Destinos[filas_array_2,1]<-id_dest
		Destinos[filas_array_2,2]<-dist_dest
		Destinos[filas_array_2,3]<-pre_dest
	FinPara
```

  - Arreglo de Cadenas para Almacenar datos de envíos ingresados por el Usuario	
	- `Dimension NombresDestinos[filas_array_2]` Dimension llamada Inventario de `filas_array_2` filas.
  - Relleno de Arreglo NombreDestinos
```scss
//	Relleno de Arreglo NombreDestinos
	Para h<-1 Hasta filas_array_1 Con Paso 1
		NombresDestinos[filas_array_2]<-nom_dest
	FinPara
```

  - Arreglo de Enteros para Almacenar Operatorias entre Valores de Productos y Envíos	
	- `Dimension Valores[filas_array_3,10]` Dimension llamada Inventario de `filas_array_3` filas y 10 columnas.
  - Relleno de Arreglo Valores
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
//	Asignaciones de Variables de Arreglos para efectos de ciclos	
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
	Escribir "|                Diseñado y Codificado por Alcibiades Oyarzun Neilson                      |"
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
//	Se ejecuta la condición de Retorno al Menú	
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


7. Casos según las variables de retorno de la función Menu_inicio
Según el resultado de la función almacenada en la variable `opc_menu` se consideran los siguientes casos

7.1 Caso `opc_menu=1`
```scss
1:
				//Inicia el Subproceso de Ingresar los Datos de Productos
				Borrar Pantalla
				//Asignaciones de Variables de Arreglos y de ID
				filas_array_1=filas_array_1+1
				id_prod=id_prod+1
				filas_array_2=filas_array_2+1
				filas_array_3=filas_array_3+1

```
- Se borra la pantalla para efectos de orden.
- Se hacen asignaciones con el fin de recorrer arreglos y la creación de numero de identificadores

```scss
//	En cada Ciclo Redimensiona los Arreglos acorde a las variables de Arreglos				
				Redimensionar Inventario[filas_array_1,5]
				Redimensionar NombresProductos[filas_array_1]
				Redimensionar Destinos[filas_array_2,3]
				Redimensionar NombresDestinos[filas_array_2]
				Redimensionar Valores[filas_array_3,10]

```

- Como validación se realiza redimensiones de los arreglos.

```scss
//	Se solicitan ingreso de Variables acordes a las reglas de validaciones"
				Escribir "Ingreso Nueva Compra y Envio"
			
				Escribir "Ingrese el Nombre del Producto:[Min 3 - Máx 13 Carateres]"
				Leer nom_prod
				
				Mientras Longitud(nom_prod)<3 o Longitud(nom_prod)>13
					
				Escribir "Ingrese el Nombre del Producto:[Min 3 - Máx 13 Carateres]"
				Leer nom_prod
				FinMientras
```

- Se solicita el ingreso de información del Nombre del Producto
- La información se almacena en la variable `nom_prod`
- Se valida con la estructura de control repetitiva Mientras `nom_prod` no con cumpla la condición [Min 3 - Máx 13 Carateres] 

```scss
				Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 9 Digitos]"
				Leer pre_orig
				
				Mientras Longitud(ConvertirATexto(pre_orig)) <1 o Longitud(ConvertirATexto(pre_orig)) >9
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 9 Digitos]"
					Leer pre_orig
					
				FinMientras
```

- Se solicita el ingreso de información del Precio Original del Producto
- La información se almacena en la variable `pre_orig`
- Se valida con la estructura de control repetitiva Mientras `pre_orig` no con cumpla la condición [Min 1 - Máx 9 Digitos] 

```scss
				Escribir "Ingrese el Porcentaje de Descuento:[Min 1 - Máx 2 Digitos]"
				Leer dcto
				Mientras Longitud(ConvertirATexto(dcto)) <1 o Longitud(ConvertirATexto(dcto)) >2
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 2 Digitos]"
					Leer dcto
					
				FinMientras
```

- Se solicita el ingreso de información del Cupón de Descuento
- La información se almacena en la variable `dcto`
- Se valida con la estructura de control repetitiva Mientras `dcto` no con cumpla la condición [Min 1 - Máx 2 Digitos] 

```scss
				Escribir "Ingrese el Porcentaje de Impuesto:[Min 1 - Máx 2 Digitos]"
				Leer imp_apli
				Mientras Longitud(ConvertirATexto(imp_apli)) <1 o Longitud(ConvertirATexto(imp_apli)) >2
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 2 Digitos]"
					Leer imp_apli
				FinMientras
```

- Se solicita el ingreso de información del Cupón de Descuento
- La información se almacena en la variable `imp_apli`
- Se valida con la estructura de control repetitiva Mientras `imp_apli` no con cumpla la condición [Min 1 - Máx 2 Digitos] 

```scss
				Escribir "Ingrese el Peso Unitario del Producto:[Min 1 - Máx 999 Kgs]"
				Leer peso_prod
				Mientras Longitud(ConvertirATexto(peso_prod)) <1 o Longitud(ConvertirATexto(peso_prod)) >3
					Escribir "Ingrese el Precio Unitario del Producto en Kilos:[Min 1 - Máx 999 Kgs]"
					Leer peso_prod
					
				FinMientras
```
- Se solicita el ingreso de información del Peso del Producto
- La información se almacena en la variable `peso_prod`
- Se valida con la estructura de control repetitiva Mientras `peso_prod` no con cumpla la condición [Min 1 - Máx 999 Kgs]

```scss
				Escribir "Ingrese el Cantidad de Unidades a Comprar:[Min 1 - Máx 99 Unidades]"
				Leer cant_prod
				Mientras Longitud(ConvertirATexto(cant_prod)) <1 o Longitud(ConvertirATexto(cant_prod)) >2
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 99 Unidades]"
					Leer cant_prod
					
				FinMientras
```
- Se solicita el ingreso de información acerca de la Cantidad de Producto
- La información se almacena en la variable `cant_prod`
- Se valida con la estructura de control repetitiva Mientras `cant_prod` no con cumpla la condición [Min 1 - Máx 99 Unidades]

```scss
//	Se invoca a la Función Lugar_Envio con retorno a la Variables opc_envio
				opc_envio=Lugar_Envio
```
- Se invoca la función `Lugar_Envio` el resultado se almacena en la variable `opc_envio`

7.1.1 Caso `opc_envio=1`
```scss
//	Se fija precio del envio, nombre destino y se almacena el precio del envio en Arreglo Destinos
					1:
						pre_envio=0
						NombresDestinos[filas_array_2]="In-Vesp"
						Destinos[filas_array_2,2]=pre_envio
```
7.1.2 Caso `opc_envio=2`
```scss
//	Se fija precio del envio, nombre destino y se almacena el precio del envio en Arreglo Destinos
					2:
						pre_envio=2800
						NombresDestinos[filas_array_2]="In-RM"
						Destinos[filas_array_2,2]=pre_envio
```
7.1.3 Caso `opc_envio=3`
```scss
//	Se fija precio del envio, nombre destino y se almacena el precio del envio en Arreglo Destinos
					3:
						pre_envio=7200
						NombresDestinos[filas_array_2]="I-XV s/XII"
						Destinos[filas_array_2,2]=pre_envio
```
7.1.4 Caso `opc_envio=4`
```scss
//	Se fija precio del envio, nombre destino y se almacena el precio del envio en Arreglo Destinos
					4:
						pre_envio=12000
						NombresDestinos[filas_array_2]="XII"
						Destinos[filas_array_2,2]=pre_envio
```
7.1.5 Caso `opc_envio=5`
```scss
// En caso de ser el envio al Extranjero se debe Ingresar el Nombre del Destino siguiendo las reglas de Validaciones
						Escribir "Ingrese el nombre del Destino:[Min 3 - Máx 10 Caracteres]"
						Leer nom_dest
						Mientras Longitud(nom_dest) <3 o Longitud(nom_dest) >10
							Escribir "Ingrese el nombre del Destino:[Min 3 - Máx 10 Caracteres]"
							Leer nom_dest
							NombresDestinos[filas_array_2]=nom_dest
						FinMientras
						// En caso de ser el envio al Extranjero se debe Ingresar Distancia del Destino siguiendo las reglas de Validaciones
						Escribir "Ingrese Distancia del Destino:[Min 1 - Máx 4 Digitos]"
						Leer dist_dest
						//Se Fija el Precio al Extrajero como el Precio a la XII Region + la Distancia del Destino x $50
						Destinos[filas_array_2,2]=12000+(dist_dest*2)
						Mientras Longitud(ConvertirATexto(dist_dest)) <1 o Longitud(ConvertirATexto(dist_dest)) >4
							Escribir "Ingrese Distancia del Destino:[Min 1 - Máx 4 Digitos]"
							Leer dist_dest
							//Se Fija el Precio al Extrajero como el Precio a la XII Region + la Distancia del Destino x $50
							Destinos[filas_array_2,2]=12000+(dist_dest*2)
						FinMientras
```

7.1 Caso `opc_menu=1` Asignaciones en los Arreglos

```scss
				//Se rellena el Arreglo Inventario
				Para i<-1 Hasta filas_array_1 Con Paso 1
					Inventario[filas_array_1,1]<-id_prod
					Inventario[filas_array_1,2]<-pre_orig
					Inventario[filas_array_1,3]<-dcto
					Inventario[filas_array_1,4]<-imp_apli
					Inventario[filas_array_1,5]<-peso_prod
				FinPara

				//Se rellena el Arreglo NombresProductos
				Para j<-1 Hasta filas_array_1 Con Paso 1
					NombresProductos[filas_array_1]<-nom_prod
				FinPara

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
- Se asignan las variables `id_prod` `pre_orig` `dcto` `imp_apli` `peso_prod` a los elementos del arreglo Inventario
- Se asignan la variable `nom_prod` a los elementos del arreglo NombresProductos
- Se asignan las operatorias para obtener precios con descuentos, descuento por cantidad,etc. a los elementos del arreglo Valores

7.1 Caso `opc_menu=1` Asignaciones de Variables para Control de Tablas y Funcion Rellena_Espacios
```scss
//	Asignaciones de Variables para Control de Tablas y Funcion Rellena_Espacios
				cont_table_cant=ConvertirATexto(Valores[filas_array_3,1])
				cont_table_prec=ConvertirATexto(Valores[filas_array_3,4] )
				cont_table_prec_orig=ConvertirATexto(Inventario[filas_array_1,2])
				cont_table_total=ConvertirATexto(Valores[filas_array_3,5])
				cont_table_imp=ConvertirATexto(Inventario[filas_array_1,4])
				cont_table_valor_imp=ConvertirATexto(Valores[filas_array_3,8])
				cont_table_prec_envio=ConvertirATexto(Destinos[filas_array_2,2])
				cont_table_valor_desc=ConvertirATexto(Valores[filas_array_3,6])
				cont_table_valor_desc_cant=ConvertirATexto(Valores[filas_array_3,7])
				cont_table_ajus_sen=ConvertirATexto(Valores[filas_array_3,9] )
				cont_table_sub_total_red=ConvertirATexto(Valores[filas_array_3,10])	
```
- Se asignan a las variables de control de tablas la conversion a texto de elementos de diferentes arreglos para ser desplegadas en pantalla y utilizadas para la funcion Rellena_Espacios


7.1 Caso `opc_menu=1` Despliegue en Pantalla del Proceso de Compra en Pantalla invocando la Funcion Rellena_Espacios  

 ```scss
//	Despliegue en Pantalla del Proceso de Compra en Pantalla invocando la Funcion Rellena_Espacios
				Escribir "+=================================================================+"
				Escribir "|          	  _____    __                     ___                  |"
				Escribir "|          	 / __(_)__/ /____ __ _  ___ _	    / _ \___ 		             |"
				Escribir "|          	_\ \/ (_-< __/ -_)  ´ \/ _ ´/   / // / -_)		             |"
				Escribir "|         /___/_/___|__/\__/_/_/_/\_,_/   /____/\__/	              |" 
				Escribir "|        / _ \_______ ____(_)__  ___                              |"
				Escribir "|       / ___/ __/ -_) __/ / _ \(_-<                              |"
				Escribir "|      /_/  /_/  \__/\__/_/\___/___/                              |"
				Escribir "+=================================================================+"
				Escribir "|	   CANT     DESCRIPCION        PRECIO        TOTAL               |"
				Escribir "+=================================================================+"
				Escribir "|   ",Valores[filas_array_3,1],Rellena_Espacios(Longitud(cont_table_cant),9),NombresProductos[filas_array_1],Rellena_Espacios(Longitud(NombresProductos[filas_array_1]),19),"$",Valores[filas_array_3,4],Rellena_Espacios(longitud(cont_table_prec),13),"$",Valores[filas_array_3,5],Rellena_Espacios(Longitud(cont_table_total),19),"|"
				Escribir "+=================================================================+"
				Escribir "|       SUB TOTAL                  :          $",Inventario[filas_array_1,2]*cant_prod,Rellena_Espacios(Longitud(cont_table_prec_orig),19),"|"
				Escribir "|       PRECIO ENVIO               :          $",Destinos[filas_array_2,2],Rellena_Espacios(Longitud(cont_table_prec_envio),19),"|"
				Escribir "|       CUPON DCTO                 :          $",Valores[filas_array_3,6]*cant_prod,Rellena_Espacios(Longitud(cont_table_valor_desc),19),"|"
				Escribir "|       DCTO X CANT                :          $",Valores[filas_array_3,7]*cant_prod,Rellena_Espacios(Longitud(cont_table_valor_desc_cant),19),"|"
				Escribir "|       TOTAL IMPUESTO ",Inventario[filas_array_1,4],"%",Rellena_Espacios(Longitud(cont_table_imp),11),":          $",Valores[filas_array_3,8]*cant_prod,Rellena_Espacios(Longitud(cont_table_valor_imp),19),"|"
				Escribir "|       TOTAL                      :          $",Valores[filas_array_3,5],Rellena_Espacios(Longitud(cont_table_total),19),"|"
				Escribir "|       --------------------------------------------------------- |"
				Escribir "|       Ajuste según ley NR° 20.956     $",Valores[filas_array_3,9],Rellena_Espacios(Longitud(cont_table_ajus_sen),25),"|"
				Escribir "|       ==========================================================+"
				Escribir "|       TOTAL A PAGAR         :         $",Valores[filas_array_3,10],Rellena_Espacios(Longitud(cont_table_sub_total_red),25),"|"
				Escribir "|       ==========================================================|"
				Escribir "|                                                                 |"
				Escribir "|                                                                 |"
				Escribir "+=================================================================+"
				
				// Se Consulta si Volver al Menú o Salir
				Escribir "| Desea volver al Menú o Salir? (1)Menú , (2)Salir                |"
				//	Se lee Variable de Retorno a Menú
				Leer opc_return
				//	Se valida la Consulta anterior
				Mientras opc_return >= 3 Hacer
					Borrar Pantalla
					Escribir "Fallaste, Intenta de Nuevo!"
					Escribir ""
					Escribir "Desea volver al Menú o Salir? (1)Menú , (2)Salir"
					//	Se lee Variable de Retorno a Menú
					Leer opc_return
				FinMientras
```

- Se despliega un Banner y Tabla ASCII tipo boleta SII
- Se despliegan en pantalla las variables:
	- `Valores[filas_array_3,1]` para CANT
	- `NombresProductos[filas_array_1]` para DESCRIPCION
	- `Valores[filas_array_3,4]` para PRECIO
	- `Valores[filas_array_3,5]` para TOTAL
	- `Inventario[filas_array_1,2]`  para SUB TOTAL
	- `Destinos[filas_array_2,2]` para PRECIO ENVIO   
	- `Valores[filas_array_3,6]` para CUPON DCTO   
	- `Valores[filas_array_3,7]` para DCTO X CANT
	- `Inventario[filas_array_1,4]` para TOTAL IMPUESTO
	- `Valores[filas_array_3,8]` para Valor Impuestos 
	- `Valores[filas_array_3,5]` para TOTAL 
	- `Valores[filas_array_3,9]` para Ajuste según ley NR° 20.956
	- `Valores[filas_array_3,10]` para TOTAL A PAGAR


- Se Consulta si Volver al Menú o Salir y se almacena en la variable `opc_return` 
- Se valida con la estructura de control repetitiva Mientras que `opc_return` cumpla con la condición `opc_return >= 3`


7.2 Caso `opc_menu=2` Despliege de Banner y Tabla de Inventario ASCII
 ```scss
//	Se despliega en Pantalla el Inventario (Solo primeros 50 Registros en Memoria)
				Escribir "+=====================================================================================================================+"
				Escribir "|                                     ____                  __           _                                            |"
				Escribir "|                                   /_  _/__ _  _____ ___  / /____ _____(_)__                                         |"
				Escribir "|                                   / // _ \ |/ / -_) _ \/ __/ _ `/ __/ / _ \                                         |"
				Escribir "|                                 /___/_//_/___/\__/_//_/\__/\_,_/_/ /_/\___/                                         |" 
				Escribir "+=====================================================================================================================+"
				Escribir "+=====================================================================================================================+"
				Escribir "|	 DESCRIPCION  +  PRECIO LISTA  +  CUPON DCTO  +  DCTO X CANT  +  IMPUESTO  +   DESTINO   +  PRECIO ENVIO  +  TOTAL   |"
				Escribir "+=====================================================================================================================+"
```
- Se despliega en Banner ASCII la palabra Inventario.
- Se despliega un formato de tabla donde se desplegaran los datos almacenados en los arreglos del codigo.

7.2 Caso `opc_menu=2` Despliegue en pantalla de información almacemnadas en Arreglos bajo formato tabla ASCII
```scss
//Se Valida el Despliegue en Pantalla de 50 Registros Máx.
				Si filas_array_3<50 Entonces
					Para i<-1 Hasta filas_array_1 Con Paso 1 Hacer
						cont_table_inve_prec_lis=ConvertirATexto(Inventario[i,2])
						cont_table_inve_cup_dcto=ConvertirATexto(Inventario[i,3])
						cont_table_inve_desc_cant=ConvertirATexto(pre_desc_cant)
						cont_table_inve_imp=ConvertirATexto(Inventario[i,4])
						cont_table_inve_prec_envio=ConvertirATexto(Destinos[i,2])
						aux=Valores[i,10]+Destinos[i,2]
						cont_table_inve_total=ConvertirATexto(aux)
						Escribir "| ",NombresProductos[i],Rellena_Espacios(Longitud(NombresProductos[i]),13),"|$",Inventario[i,2],Rellena_Espacios(Longitud(cont_table_inve_prec_lis),15),"|",Inventario[i,3],"%",Rellena_Espacios(Longitud(cont_table_inve_cup_dcto),13),"|$",pre_desc_cant,Rellena_Espacios(Longitud(cont_table_inve_desc_cant),14),"|",Inventario[i,4],"%",Rellena_Espacios(Longitud(cont_table_inve_imp),11),"|",NombresDestinos[i],Rellena_Espacios(Longitud(NombresDestinos[i]),13),"|$",Destinos[i,2],Rellena_Espacios(Longitud(cont_table_inve_prec_envio),15),"|$",aux,Rellena_Espacios(Longitud(cont_table_inve_total),9),"|"
					FinPara
				Sino
				
				Para i<-1 Hasta 50 Con Paso 1 Hacer
					cont_table_inve_prec_lis=ConvertirATexto(Inventario[i,2])
					cont_table_inve_cup_dcto=ConvertirATexto(Inventario[i,3])
					cont_table_inve_desc_cant=ConvertirATexto(pre_desc_cant)
					cont_table_inve_imp=ConvertirATexto(Inventario[i,4])
					cont_table_inve_prec_envio=ConvertirATexto(Destinos[i,2])
					aux=Valores[i,10]+Destinos[i,2]
					cont_table_inve_total=ConvertirATexto(aux)
					Escribir "| ",NombresProductos[i],Rellena_Espacios(Longitud(NombresProductos[i]),13),"|$",Inventario[i,2],Rellena_Espacios(Longitud(cont_table_inve_prec_lis),15),"|",Inventario[i,3],"%",Rellena_Espacios(Longitud(cont_table_inve_cup_dcto),13),"|$",pre_desc_cant,Rellena_Espacios(Longitud(cont_table_inve_desc_cant),14),"|",Inventario[i,4],"%",Rellena_Espacios(Longitud(cont_table_inve_imp),11),"|",NombresDestinos[i],Rellena_Espacios(Longitud(NombresDestinos[i]),13),"|$",Destinos[i,2],Rellena_Espacios(Longitud(cont_table_inve_prec_envio),15),"|$",aux,Rellena_Espacios(Longitud(cont_table_inve_total),9),"|"
				FinPara
		FinSi	
				Escribir "|                                                                                                                     |"
				Escribir "+=====================================================================================================================+"
				Escribir "+=====================================================================================================================+"
				Escribir "|                                    PRESIONE UNA TECLA PARA VOLVER AL MENÚ                                           |"
				Escribir "+=====================================================================================================================+"
				Escribir "+=====================================================================================================================+"
				
				Esperar Tecla
				
```
- Si `filas_array_3` es menor que 50 despliegan variables en pantalla `filas_array_3` veces 
- Se despliegan en pantalla las variables:
	- `NombresProductos[i]` para DESCRIPCION
	- `Inventario[i,2]` para PRECIO LISTA
	- `Inventario[i,3]` para CUPON DCTO
	- `pre_desc_cant` para DCTO X CANT
	- `Inventario[i,4]` para IMPUESTO
	- `NombresDestinos[i]` para DESTINO
	- `Destinos[i,2]` para PRECIO ENVIO
	- `aux` para TOTAL
- Sino se despliegan variables en pantalla 50 veces
- Se espera una tecla para volver al Menu_Inicio


7.3 Caso `opc_menu=3` Despliegue Banner ASCII de Despedida
```scss
//	Borrar Pantalla
		// Se Despliega en Pantalla el Banner de Despedida
		Escribir "+========================================+"
		Escribir "|    ____                _               |"           
		Escribir "|   / ___|_ __ __ _  ___(_) __ _ ___     |"
		Escribir "|   | |  _| ´__/ _` |/ __| |/ _` / __|   |"
		Escribir "|   | |_| | | | (_| | (__| | (_| \__ \   |"
		Escribir "|   _\____|_|  \__,_|\___|_|\__,_|___/   |"
		Escribir "|   \ \   / /   _  ___| |_   ____ _      |"
		Escribir "|    \ \ / / | | |/ _ \ \ \ / / _` |     |"
		Escribir "|     \ V /| |_| |  __/ |\ V / (_| |     |"
		Escribir "|    __\_/  \__,_|\___|_| \_/ \__,_|_    |"
		Escribir "|   |  _ \ _ __ ___  _ __ | |_ ___ | |   |"
		Escribir "|   | |_) | ´__/ _ \| ´_ \| __/ _ \| |   |"
		Escribir "|   |  __/| | | (_) | | | | || (_) |_|   |"
		Escribir "|   |_|   |_|  \___/|_| | \_ \\___/(_)   |"
		Escribir "|                                        |"
		Escribir "+========================================+"
		opc_return=3
```
- Se despliega banner ASCII.
- Se asigna `opr_retunr=3" para abortar condicion Mientras en parrafos anteriores.

## 6. Validación

**Validación** Se entregó como validación a probar en el algoritmo los siguientes datos. 

```scss
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
```

- La Información para Validar el Algoritmo presenta el siguiente error
```scss
Los siguientes son los detalles del producto y la información del cliente:

- Precio original: $100 // Es una Variable que se defino como Entero 
- Cupón de descuento: 10% de descuento // Es una Variable que se defino como Entero
- IVA (impuesto al valor agregado): 12% // Es una Variable que se defino como Entero
- Cantidad: 2 pares de zapatos deportivos // Es una Variable que se defino como Entero
- Peso del paquete: 3 kg // Es una Variable que se defino como Entero
- Destino del envío: Nueva York // Es una Variable que se defino como Cadena

De acuerdo con los requisitos del proyecto, el algoritmo deberá realizar lo siguiente:

- Leer el precio original del producto: $100 // Se ingresa una Variable que comple con la definición de Entero
- Aplicar el descuento del cupón: 10% de descuento, es decir, el precio con descuento será $90. // Se puede realizar la operación ya que son Variables con la misma definición de Entero
- Aplicar el IVA: 12% del precio con descuento, es decir, $90 * 1.12 = $100.80. // Se puede realizar la operación ya que son Variables con la misma definición de Entero //Los impuestos se cobran después de 	 
  aplicados los descuentos
- Aplicar el descuento por cantidad (2 pares de zapatos): 5% de descuento, es decir, $100.80 * 0.95 = $95.76. // Se puede realizar la operación ya que son Variables con la misma definición de Entero //Los 	 
  descuentos se aplican antes de los impuestos 
- Calcular el costo de envío basado en el peso y el destino: $10 (costo fijo) + $2 * 3 kg = $16. // NO Se puede realizar la operación ya las Variables no poseen la misma definición (Peso Entero - Destino Cadena)
- Calcular el costo final del producto: ($95.76 * 2) + $16 = $207.52. // NO Se puede realizar la operación ya que los valores para operar no se pueden representar por el error anterior
```

- Para poder corregir el error en los requisitos de validación del algoritmo se desarrolló una función `Lugar_Envio` que para luego según el caso de resultado le asigna un precio arbitrario al envío para 4 de los 5 casos posibles y al quinto se le asigna el valor de la operatoria de las variables `dist_dest` y `cant_prod`: (12000+(dist_dest*2))*cant_prod

```scss
(1) Interior Anillo Americo Vespucio
(2) Dentro RM
(3) Regiones I - XV excepto XII
(4) Región XII
(5) Extranjero
Favor ingresar una Opción
> 5
Ingrese el nombre del Destino:[Min 3 - Máx. 10 Caracteres]
> NYC
Ingrese Distancia del Destino:[Min 1 - Máx. 4 Dígitos]
> 8248
```
- Se Ingresa como Nombre del Destino "NYC" correspondiente al codigo de envío postal.
- Se ingresa la distancia de 8248 Kms de distancia que equivale a Santiago - Nueva York

```scss
+=================================================================+
|            _____    __                     ___                  |
|           / __(_)__/ /____ __ _  ___ _    / _ \___ 		  |
|          _\ \/ (_-< __/ -_)  ´ \/ _ ´/   / // / -_)		  |
|         /___/_/___|__/\__/_/_/_/\_,_/   /____/\__/	          |
|        / _ \_______ ____(_)__  ___                              |
|       / ___/ __/ -_) __/ / _ \(_-<                              |
|      /_/  /_/  \__/\__/_/\___/___/                              |
+=================================================================+
|     CANT     DESCRIPCION        PRECIO        TOTAL             |
+=================================================================+
|      2        Zapatos Dep        $100          $57183.52        | //CANTIDAD // DESCRIPCION // PRECIO ORIGINAL //TOTAL
+=================================================================+
|       SUB TOTAL                  :          $200                | //SUBTOTAL = PRECIO ORIGINAL * CANTIDAD
|       PRECIO ENVIO               :          $56992              | //PRECIO ENVIO = (12000+(DISTANCIA DESTINO*2))*CANTIDAD
|       CUPON DCTO                 :          $-20                | //DESCUENTO 10% APLICADO A PRECIO ORGINAL * CANTIDAD
|       DCTO X CANT                :          $-9                 | //DESCUENTO 5% APLICADO SEGUN CANTIDAD
|       TOTAL IMPUESTO 12%         :          $20.52              | //IMPUESTOS DEL 12%
|       TOTAL                      :          $57183.52           | //TOTAL PRECIO CON DESCUENTOS E IMPUESTOS APLICADOS + PRECIO ENVIO 
|       --------------------------------------------------------- |
|       Ajuste según ley NR° 20.956     $1                        | //AJUSTE SENCILLO DE TOTAL
|       ==========================================================+
|       TOTAL A PAGAR         :         $57184                    | //TOTAL CON AJUSTE SENCILLO APLICADO
|       ==========================================================|
|                                                                 |
|                                                                 |
+=================================================================+
| Desea volver al Menú o Salir? (1)Menú , (2)Salir                |
>
``` 




  
Al final, el algoritmo deberá mostrar el costo final del producto ($57184) y desglosados en: descuento, impuestos, descuento por cantidad y costo de envío.

****

## 7. Requisitos y entregables    

Según la lista de requisitos mínimos del proyecto se cumplirían:

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

## 8. Criterios de evaluación

A partir de los requisitos, tu % estará definido de esta forma:

| ÁREA       | % DEL TOTAL |
| ------------- |:-------------:|
| Implementación de operaciones aritméticas y operadores de comparación      | 20%     |
| Implementación de control de flujo: condiciones y bucles      | 30%     |
| Uso de arreglos unidimensionales y/o bidimensionales | 20%      |
| Uso de Git y GitHub en el proyecto | 15%      |
| Entrega a tiempo | 15%      |

****

## 9. Entregas

Se crea un repositorio en GitHub para este proyecto y se añade un archivo de pseudocódigo para PSeInt que resuelve el problema propuesto.

- **Fecha de Entrega** El proyecto se entregó el 31/7/2024.

