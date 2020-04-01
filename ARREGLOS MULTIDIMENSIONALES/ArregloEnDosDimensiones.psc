Proceso ArregloEnDosDimensiones
	
	Definir ArregloDosDimensiones como Numerico;
	Dimension ArregloDosDimensiones[2,4];
	
	// Asignacion manual
	// Primera fila
	ArregloDosDimensiones[0,0] <- 10;
	ArregloDosDimensiones[0,1] <- 20;
	ArregloDosDimensiones[0,2] <- 30;
	ArregloDosDimensiones[0,3] <- 40;
	
	// Segunda fila
	ArregloDosDimensiones[1,0] <- 10;
	ArregloDosDimensiones[1,1] <- 20;
	ArregloDosDimensiones[1,2] <- 30;
	ArregloDosDimensiones[1,3] <- 40;
	
	// Recorrer secuencialmente el arreglo 2D y mostrar sus valores
	// Para cada dimension haremos un para con su contador
	Para i<-0 hasta 1 hacer
		Para j<-0 hasta 3 hacer
			Escribir Sin Saltar ArregloDosDimensiones[i,j], ' ';
		FinPara
		Escribir '';
	FinPara
	
FinProceso
