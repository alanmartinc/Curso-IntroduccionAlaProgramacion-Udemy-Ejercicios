SubProceso Saludar()
	Definir i como Cadena;
	i <- '¡Hola Mundo!';
	Escribir i;
FinSubProceso

Proceso ProcesoPrincipal
	Definir i como Entero;
	Para i<-0 hasta 9 hacer
		Escribir "Saludar por ",i+1," vez:";
		Saludar();
	FinPara
FinProceso

