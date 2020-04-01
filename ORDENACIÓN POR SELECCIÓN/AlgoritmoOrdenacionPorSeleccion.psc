Subproceso IntercambiarValores(Arreglo por Referencia, pos1, pos2)
	Definir temporal como Numerico;
	temporal <- Arreglo[pos1];
	Arreglo[pos1]<-Arreglo[pos2];
	Arreglo[pos2]<-temporal;	
FinSubProceso

Subproceso OrdenarPorSeleccion(Arreglo por Referencia, Nelementos)
	// i para recorrer el bucle que guarda la posicion actual a ordenar
	// j para recorrer todas las posiciones a la derecha de la que toca ordenar
	// min para guardar la posicion del menor valor encontrado
	Definir i,j, min como Numericos;
	// Para que ordenara todas las posiciones una a una
	Para i<-0 hasta Nelementos-1 hacer
		// En min guardamos la posicion donde encontramos el elemento mínimo en cada pasada interior
		// La primera posicion de min es la posicion actual del para exterior
		min <- i ;
		// El para interior va desde el elemento actual hasta el final
		Para j<-i hasta Nelementos-1 hacer
			// Si el valor de la posicion j es menor que el de la posicion min
			// guardamos su posición en la variable min, ya que ahi está el valor mínimo
			Si Arreglo[j] < Arreglo[min] entonces
				min <- j;
			FinSi
		FinPara
		// Finalmente tendremos en el para exterior la posicion actual que toca ordenar -> i
		// y en min la posicion con el valor minimo que hemos encontrado y que toca intercambiar
		IntercambiarValores(Arreglo, i, min);
	FinPara
FinSubProceso


SubProceso MostrarArreglo(Arreglo, Nelementos)
	Definir i como Numerico;
	Para i<-0 hasta Nelementos-1 Hacer
		Escribir Sin Saltar Arreglo[i], ' ';
	FinPara
	Escribir '';
FinSubProceso

Proceso OrdenPorSeleccion
	Definir ListaNumeros, N_ELEMENTOS como Enteros;
	N_ELEMENTOS <- 10;
	Dimension ListaNumeros[N_ELEMENTOS];
	Para i<-0 hasta N_ELEMENTOS-1 Hacer
		ListaNumeros[i] <- azar(100);
	FinPara
	
	MostrarArreglo(ListaNumeros, N_ELEMENTOS);
	OrdenarPorSeleccion(ListaNumeros, N_ELEMENTOS);
	MostrarArreglo(ListaNumeros, N_ELEMENTOS);
	
FinProceso
