SubProceso Saludar(otra_variable Por Referencia)
	Para i<-0 hasta otra_variable-1 hacer
		Escribir '¡Hola Mundo!';
	FinPara
	// modificamos una variable del proceso 
	// principal desde el subproceso
	otra_variable <- 999;
FinSubProceso

Proceso ProcesoPrincipal
	Definir maximo como Entero;
	maximo <- 5;
	Saludar(maximo);
	Escribir 'Despues de ejecutar el subproceso maximo vale: ', maximo;
FinProceso