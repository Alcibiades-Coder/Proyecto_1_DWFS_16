//========================================================
//        _____                 _                       
//      |  ___|   _ _ __   ___(_) ___  _ __   ___  ___ 
//     | |_ | | | | '_ \ / __| |/ _ \| '_ \ / _ \/ __|
//    |  _|| |_| | | | | (__| | (_) | | | |  __/\__ \
//   |_|   \__,_|_| |_|\___|_|\___/|_| |_|\___||___/
//  
//========================================================
////Función Aplicar Descuento
	Funcion res <- Aplicar_Dcto (precio,descuento)
		res= precio - ((precio*descuento)/100)
	FinFuncion
	
////Función Aplicar Impuesto
	Funcion res <- Aplicar_Imp (precio, impuesto)
		res=precio + ((precio*impuesto)/100)
	FinFuncion
////Función Aplicar Descuento por Cantidad
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

////Función Aplicar Costo de Envio
	Funcion res <- Costo_Envio (peso,distancia,cantidad)
	//	Se aplica CLP$10 por Kilometro de Distancia para efectos de Envio
	//	Se aplica un 50% de Descuento al Envio
		res=(peso*distancia*cant*10)/2 
	FinFuncion
	
////Función Menú de Inicio
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
		Escribir "|   1. Ingresar Nueva Compra de Productos                                                 |"
		Escribir "|   2. Revisar Inventario de Productos                                                    |"
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
			Escribir "|   1. Ingresar Nueva Compra de Productos                                                 |"
			Escribir "|   2. Revisar Inventario de Productos                                                    |"
			Escribir "|   3. Salir                                                                              |"
			Escribir "+=========================================================================================+"
			Escribir "Elija una opción (1-3): "
			Leer opc
			Borrar Pantalla
		FinMientras

		res<-opc
	FinFuncion
	
////Función Lugar de Envio

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

////Función Rellena Espacios Vacios para calzar Tablas
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
	
//========================================================	
//           _    _                  _ _                   
//         / \  | | __ _  ___  _ __(_) |_ _ __ ___   ___  
//       / _ \ | |/ _` |/ _ \| '__| | __| '_ ` _ \ / _ \ 
//     / ___ \| | (_| | (_) | |  | | |_| | | | | | (_) |
//   /_/   \_\_|\__, |\___/|_|  |_|\__|_| |_| |_|\___/ 
//              |___/                                  	
//========================================================	
	
////Inicio de Codigo Sistema de Precios
	Algoritmo Sistema_de_Precios
		
////Declaraciones de Variables
	//	Variables manejadas por el usuario
		Definir pre_orig, dcto, imp_apli, peso_prod, cant_prod, dist_dest, kilometros Como Entero
		Definir Destinos_Nombres, NombresProductos, nom_prod, nom_dest Como Caracter
	//	Variables de control
		Definir id_prod, id_dest, opc_menu, opc_envio Como Entero
	//	Variables de almacenamiento
		Definir pre_dcto, pre_imp, pre_dcto_cant, sub_total, sub_total_red, pre_envio, pre_dest Como Real
		Definir valor_desc,valor_desc_cant, valor_imp, ajus_sen Como Real
	//	Variables de dimensiones de los Arreglos
		Definir filas_array_1,filas_array_2, filas_array_3, columnas_array_1, columnas_array_2 Como Entero
	// Variables para manejos de tablas	
		Definir cont_table_cant,cont_table_prec,cont_table_total,cont_table_imp,cont_table_valor_imp Como Caracter
		Definir cont_table_prec_envio,cont_table_valor_desc, cont_table_valor_desc_cant, cont_table_ajus_sen Como Caracter
		Definir cont_table_sub_total_red,cont_table_inve_prec_envio, cont_table_inve_total Como Caracter	
		Definir cont_table_inve_prec_lis, cont_table_inve_cup_dcto, cont_table_inve_desc_cant, cont_table_inve_imp Como Caracter
		
////Asignaciones Iniciales
	id_prod = 0
	pre_orig = 0
	dcto = 0
	imp_apli = 0
	peso_prod = 0
	nom_prod = "Na"
	id_dest = 0
	dist_dest = 0
	pre_dest = 0
	nom_dest = "Nada"
	filas_array_1 = 1
	filas_array_2 = 1
	filas_array_3 = 1
////Dimensionamientos de Arreglos
//	Arreglo de Enteros para Almacenar datos de productos ingresados por el Usuario + ID
	Dimension Inventario[filas_array_1,5]
//	Relleno de Arreglo Inventario	
	Para i<-1 Hasta filas_array_1 Con Paso 1
		Inventario[filas_array_1,1]<-id_prod
		Inventario[filas_array_1,2]<-pre_orig
		Inventario[filas_array_1,3]<-dcto
		Inventario[filas_array_1,4]<-imp_apli
		Inventario[filas_array_1,5]<-peso_prod
	FinPara
//	Arreglo de Cadenas para Almacenar datos Ingresados por el Usuario	
	Dimension NombresProductos[filas_array_1]
//	Relleno de Arreglo NombresProductos	
	Para j<-1 Hasta filas_array_1 Con Paso 1
		NombresProductos[filas_array_1]<-nom_prod
	FinPara
//	Arreglo de Enteros para Almacenar datos de envios ingresados por el Usuario + ID	
	Dimension Destinos[filas_array_2,3]
//	Relleno de Arreglo Destinos	
	Para k<-1 Hasta filas_array_1 Con Paso 1
		Destinos[filas_array_2,1]<-id_dest
		Destinos[filas_array_2,2]<-dist_dest
		Destinos[filas_array_2,3]<-pre_dest
	FinPara
//	Arreglo de Cadenas para Almacenar datos de envios ingresados por el Usuario
	Dimension NombresDestinos[filas_array_2]
//	Relleno de Arreglo NombreDestinos
	Para h<-1 Hasta filas_array_1 Con Paso 1
		NombresDestinos[filas_array_2]<-nom_dest
	FinPara
//	Arreglo de Enteros para Almacenar Operatorias entre Valores de Productos y Envios	
	Dimension Valores[filas_array_3,10]
//	Asignacions de Variables de Arreglos para efectos de ciclos	
	filas_array_1 = 0
	filas_array_2 = 0
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
		Segun opc_menu Hacer
			1:
				//Inicia el Subproceso de Ingresar los Datos de Productos
				Borrar Pantalla
				//Asignaciones de Variables de Arreglos y de ID
				filas_array_1=filas_array_1+1
				id_prod=id_prod+1
				filas_array_2=filas_array_2+1
				filas_array_3=filas_array_3+1
				//	En cada Ciclo Redimensiona los Arreglos acorde a las variables de Arreglos				
				Redimensionar Inventario[filas_array_1,5]
				Redimensionar NombresProductos[filas_array_1]
				Redimensionar Destinos[filas_array_2,3]
				Redimensionar NombresDestinos[filas_array_2]
				Redimensionar Valores[filas_array_3,10]
				//	Se solicitan ingreso de Variables acordes a las reglas de validaciones"
				Escribir "Ingreso Nueva Compra y Envio"
			
				Escribir "Ingrese el Nombre del Producto:[Min 3 - Máx 13 Carateres]"
				Leer nom_prod
				
				Mientras Longitud(nom_prod)<3 o Longitud(nom_prod)>13
					
				Escribir "Ingrese el Nombre del Producto:[Min 3 - Máx 13 Carateres]"
				Leer nom_prod
				FinMientras
			
				Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 9 Digitos]"
				Leer pre_orig
				
				Mientras Longitud(ConvertirATexto(pre_orig)) <1 o Longitud(ConvertirATexto(pre_orig)) >9
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 9 Digitos]"
					Leer pre_orig
					
				FinMientras
				
				Escribir "Ingrese el Porcentaje de Descuento:[Min 1 - Máx 2 Digitos]"
				Leer dcto
				Mientras Longitud(ConvertirATexto(dcto)) <1 o Longitud(ConvertirATexto(dcto)) >2
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 2 Digitos]"
					Leer dcto
					
				FinMientras
			
				Escribir "Ingrese el Porcentaje de Impuesto:[Min 1 - Máx 2 Digitos]"
				Leer imp_apli
				Mientras Longitud(ConvertirATexto(imp_apli)) <1 o Longitud(ConvertirATexto(imp_apli)) >2
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 2 Digitos]"
					Leer imp_apli
				FinMientras
				
				Escribir "Ingrese el Peso Unitario del Producto:[Min 1 - Máx 999 Kgs]"
				Leer peso_prod
				Mientras Longitud(ConvertirATexto(peso_prod)) <1 o Longitud(ConvertirATexto(peso_prod)) >3
					Escribir "Ingrese el Precio Unitario del Producto en Kilos:[Min 1 - Máx 999 Kgs]"
					Leer peso_prod
					
				FinMientras
				Escribir "Ingrese el Cantidad de Unidades a Comprar:[Min 1 - Máx 99 Unidades]"
				Leer cant_prod
				Mientras Longitud(ConvertirATexto(cant_prod)) <1 o Longitud(ConvertirATexto(cant_prod)) >2
					Escribir "Ingrese el Precio Unitario del Producto:[Min 1 - Máx 99 Unidades]"
					Leer cant_prod
					
				FinMientras
				
				//	Se invoca a la Función Lugar_Envio con retorno a la Variables opc_envio
				opc_envio=Lugar_Envio
				//	Selección de Caso Según opc_envio
				Segun opc_envio Hacer
					//	Se fija precio del envio, nombre destino y se almacena el precio del envio en Arreglo Destinos
					1:
						pre_envio=0
						NombresDestinos[filas_array_2]="FIJO"
						Destinos[filas_array_2,2]=pre_envio * cant_prod
					2:
						pre_envio=2800
						NombresDestinos[filas_array_2]="In-RM"
						Destinos[filas_array_2,2]=pre_envio * cant_prod
					3:
						pre_envio=7200
						NombresDestinos[filas_array_2]="I-XV s/XII"
						Destinos[filas_array_2,2]=pre_envio * cant_prod
					4:
						pre_envio=12000
						NombresDestinos[filas_array_2]="XII"
						Destinos[filas_array_2,2]=pre_envio * cant_prod
					5:
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
						Destinos[filas_array_2,2]=(12000+(dist_dest*2))*cant_prod
						Mientras Longitud(ConvertirATexto(dist_dest)) <1 o Longitud(ConvertirATexto(dist_dest)) >4
							Escribir "Ingrese Distancia del Destino:[Min 1 - Máx 4 Digitos]"
							Leer dist_dest
							//Se Fija el Precio al Extrajero como el Precio a la XII Region + la Distancia del Destino x $50
							Destinos[filas_array_2,2]=(12000+(dist_dest*2))*cant_prod
						FinMientras
						
						
				FinSegun
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
					Valores[filas_array_3,2]= Aplicar_Dcto((Inventario[filas_array_1,2]),Inventario[filas_array_1,3])
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
				Borrar Pantalla
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
				Escribir "|   ",Valores[filas_array_3,1],Rellena_Espacios(Longitud(cont_table_cant),9),NombresProductos[filas_array_1],Rellena_Espacios(Longitud(NombresProductos[filas_array_1]),19),"$",Inventario[filas_array_1,2],Rellena_Espacios(longitud(cont_table_prec),15),"$",Valores[filas_array_3,5],Rellena_Espacios(Longitud(cont_table_total),19),"|"
				Escribir "+=================================================================+"
				Escribir "|       SUB TOTAL                  :          $",Inventario[filas_array_1,2]*cant_prod,Rellena_Espacios(Longitud(cont_table_prec_orig),19),"|"
				Escribir "|       PRECIO ENVIO               :          $",Destinos[filas_array_2,2],Rellena_Espacios(Longitud(cont_table_prec_envio),19),"|"
				Escribir "|       CUPON DCTO                 :          $",Valores[filas_array_3,6]*cant_prod,Rellena_Espacios(Longitud(cont_table_valor_desc),19),"|"
				Escribir "|       DCTO X CANT                :          $",Valores[filas_array_3,7]*cant_prod,Rellena_Espacios(Longitud(cont_table_valor_desc_cant),21),"|"
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
			2:
				Borrar Pantalla
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
				
			3:
				Borrar Pantalla
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
		FinSegun
	Sino
		Borrar Pantalla
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
	FinSi
FinMientras
FinAlgoritmo
