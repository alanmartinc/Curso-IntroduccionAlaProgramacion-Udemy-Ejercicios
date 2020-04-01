Subproceso IntercambiarValores(Arreglo por Referencia, pos1, pos2)
	Definir temporal como Numerico;
	temporal <- Arreglo[pos1];
	Arreglo[pos1]<-Arreglo[pos2];
	Arreglo[pos2]<-temporal;	
FinSubProceso

Subproceso OrdenarPorInsercion(Arreglo por Referencia, Nelementos)
	// i para recorrer todos los elementos del arreglo
	// j para recorrer todos los elementos desde i hasta 0
	Definir i,j como Numericos;
	
	// Recorremos cada elemento
	Para i<-0 hasta Nelementos-1 Hacer
		// j empezará en i porque iremos comprobando hacia la izquierda los valores
		j <- i;
		// mientras j sea mayor que 0 y a su vez se cumpla que
		// el numero de la izquierda (j-1) sea mayor que el de la derecha (j)
		// iremos intercambiando los valores
		Mientras j>0 Y Arreglo[j-1] > Arreglo[j] hacer
			// Intercambiamos el valor actual con el anterior
			IntercambiarValores(Arreglo,j,j-1);
			// Decrementamos j 1 para indicar que hemos hecho el intercambio
			// y ahora vamos una posición más a la izquierda
			j <- j - 1;
		FinMientras
	FinPara
FinSubProceso

SubProceso MostrarArreglo(Arreglo, Nelementos)
	Definir i como Numerico;
	Para i<-0 hasta Nelementos-1 Hacer
		Escribir Sin Saltar Arreglo[i], ' ';
	FinPara
	Escribir '';
FinSubProceso

Proceso OrdenPorInsercion
	Definir ListaNumeros, N_ELEMENTOS como Enteros;
	N_ELEMENTOS <- 10;
	Dimension ListaNumeros[N_ELEMENTOS];
	Para i<-0 hasta N_ELEMENTOS-1 Hacer
		ListaNumeros[i] <- azar(100);
	FinPara
	
	MostrarArreglo(ListaNumeros, N_ELEMENTOS);
	OrdenarPorInsercion(ListaNumeros, N_ELEMENTOS);
	MostrarArreglo(ListaNumeros, N_ELEMENTOS);
	
FinProceso
