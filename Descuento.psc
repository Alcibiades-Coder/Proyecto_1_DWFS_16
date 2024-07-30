
Algoritmo ProcesoComprayDescuento
	//	Inicio Definición de Variables
	Definir nomprod Como Caracter
    Definir choice, desicion_compra, desicion_pago, contador,cantidad, punit, subtotal Como Entero
	Definir dcto, totaldcto, total, montopago Como Real
	//	Fin Definición de Variables	
	
	desicion_compra=0;
	
	//	Inicio Proceso de Compra
		//	Inicio Validación Proceso de Compra
		Mientras desicion_compra <>1 y desicion_compra <>2 Hacer
			//	Inicio Ingreso de Variables Nombre de Producto, Precio Unitario de Producto y Cantidad
			Escribir "Favor Ingresa el Nombre del Producto (entre 3 y 23 caracteres):"
			Leer nomprod
			contador = Longitud(nomprod)
			Mientras contador < 2 o contador > 24 Hacer
				Escribir "El Producto tiene que tener entre 3 y 23 caracteres para ser valido. Intentalo de Nuevo:"
				Leer nomprod
				contador=Longitud(nomprod)
			FinMientras
			Escribir "Favor Ingresa el Precio Unitario del Producto(CLP$):"
			leer punit
			Mientras punit < 0 Hacer
				Escribir "El Precio Unitario tiene que ser mayor que 0 para ser valido. Intentalo de Nuevo:"
				Leer punit
			FinMientras
			Escribir "Favor Ingresa la Cantidad a Comprar del Producto (Unidades Enteras):"
			Leer cantidad
			Mientras cantidad < 0 Hacer
				Escribir "La Cantidad que ser mayor que 0 para ser valida. Intentalo de Nuevo:"
				Leer cantidad
			FinMientras
			subtotal=punit*cantidad
			Borrar Pantalla
			//	Fin Ingreso de Variables Nombre de Producto, Precio Unitario de Producto y Cantidad
			Escribir "Usted desea comprar "
			Escribir cantidad," unidades de ", nomprod 
			Escribir "por un Subtotal de: ", subtotal
			Escribir ""
			Escribir ""
			Escribir ""
			Escribir ""
			Escribir "Esta correcto (1) o No esta correcto (2):"
			Leer desicion_compra	
			Borrar Pantalla
			//	Fin Validación Proceso de Compra		
		FinMientras	
	//	Fin Proceso de Compra	
	
	//	Inicio Proceso Descuento segun condición	
		Si desicion_compra = 1 Entonces
			Escribir "Genial continuamos con el proceso de Compra en 3 Segundos"
			Esperar 3 Segundos
			Borrar Pantalla
			Escribir "El descuento por la cantidad de unidades a comprar es: " 
			Si cantidad < 10 Entonces
				Escribir "No se aplica ningún descuento"
				Escribir ""
				dcto=0
				totaldcto = subtotal*dcto
				Escribir "El descuento corresponde a: ", totaldcto
				Escribir ""
			SiNo
				Si cantidad >= 10 y cantidad < 20 Entonces
					Escribir "De un 10% de Descuento"
					dcto=0.1
					totaldcto = subtotal*dcto
					Escribir "El descuento corresponde a: ", totaldcto
					Escribir ""
				Sino
					Si cantidad <= 20 y cantidad > 50 Entonces
						Escribir "De un 20% de Descuento"
						dcto=0.2
						totaldcto = subtotal*dcto
						Escribir "El descuento corresponde a: ", totaldcto
						Escribir ""
					SiNo
						Escribir "De un 30% de Descuento"
						dcto=0.3
						totaldcto = subtotal*dcto
						Escribir "El descuento corresponde a: ", totaldcto
						Escribir ""
					FinSi
				FinSi
			FinSi
	//	Fin Proceso Descuento segun condición			
			
	total = subtotal - totaldcto
	
	desicion_pago=0
	
	//	Inicio Validación desición de Pago
		Mientras desicion_pago <> 1 y desicion_pago <> 2 Hacer
			Escribir "Continuando con el pago de:" 
			Escribir cantidad," unidades de ", nomprod 
			Escribir "por un Total con descuentos aplicados de: ", total
			Escribir ""
			Escribir ""
			Escribir ""
			Escribir ""
			Escribir "Esta correcto (1) o No esta correcto (2):"
			Leer desicion_pago
			Borrar Pantalla
		FinMientras
	//	Fin Validación desición de Pago
		
		//	Inicio Proceso de Pago	
			Si desicion_pago = 1 Entonces
				Escribir "Genial continuamos con el proceso de Pago en 3 Segundos"
				Esperar 3 Segundos
				Borrar Pantalla
				montopago=0
				Escribir "Escriba el monto a pagar: "
				leer montopago
			//	Inicio Validación que el dinero es suficiente
				Mientras montopago < total
					Escribir "Falta Dinero, reingrese un valor igual o superior a ", total, " : "
					Leer montopago
				FinMientras
			//Fin Validación que el dinero es suficiente
				
			//Generación de opciones para Según
				Si montopago = (total) Entonces
					choice=1
				SiNo
					choice=2
				FinSi
			//Fin Generación de opciones para Según
				
			//Según con casos de compras exitosas
				Segun choice Hacer
					Caso 1: Escribir "Compra Exitosa Gracias!"
					Caso 2:	Escribir  "Compra Exitosa su Vuelto es: " montopago - total
				FinSegun
			//Fin Según con casos de compras exitosas
				
			//Condición SiNo Proceso de Pago
			SiNo
				Escribir "Adios"
				Esperar 3 Segundos
				Borrar Pantalla
				Escribir "Reinicie el proceso de Pago"
			FinSi
		//	Fin Proceso de Pago	
		
	//Condición SiNo Proceso de Compra
			SiNo
			Escribir "Adios"
			Esperar 3 Segundos
			Borrar Pantalla
			Escribir "Reinicie el proceso de compra"
		FinSi
	//	Fin Proceso de Compra			
FinAlgoritmo
