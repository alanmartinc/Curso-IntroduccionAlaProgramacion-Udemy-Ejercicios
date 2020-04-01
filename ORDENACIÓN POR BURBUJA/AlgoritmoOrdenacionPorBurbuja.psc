Subproceso IntercambiarValores(Arreglo por Referencia, pos1, pos2)
	Definir temporal como Numerico;
	temporal <- Arreglo[pos1];
	Arreglo[pos1]<-Arreglo[pos2];
	Arreglo[pos2]<-temporal;	
FinSubProceso

Subproceso OrdenarPorBurbuja(Arreglo por Referencia, Nelementos)
	Definir i como Numerico;
	Definir intercambiados como Logico;
	Repetir 
		intercambiados <- FALSO;
		// Recorremos los valores del arreglo
		Para i<-1 hasta Nelementos-1 hacer
			// Si el numero actual y el numero anterior estan desordenados
			Si Arreglo[i-1] > Arreglo[i] Entonces
				IntercambiarValores(Arreglo, i-1, i);
				intercambiados <- VERDADERO;
			FinSi
		FinPara
	Hasta Que (intercambiados = FALSO)
FinSubProceso

SubProceso MostrarArreglo(Arreglo, Nelementos)
	Definir i como Numerico;
	Para i<-0 hasta Nelementos-1 Hacer
		Escribir Sin Saltar Arreglo[i], ' ';
	FinPara
	Escribir '';
FinSubProceso

Proceso OrdenPorBurbuja
	Definir ListaNumeros, N_ELEMENTOS como Enteros;
	N_ELEMENTOS <- 10;
	Dimension ListaNumeros[N_ELEMENTOS];
	Para i<-0 hasta N_ELEMENTOS-1 Hacer
		ListaNumeros[i] <- azar(100);
	FinPara
	
	MostrarArreglo(ListaNumeros, N_ELEMENTOS);
	OrdenarPorBurbuja(ListaNumeros, N_ELEMENTOS);
	MostrarArreglo(ListaNumeros, N_ELEMENTOS);
	
FinProceso
