SubProceso Saludar(maximo)
	Definir i como Entero;
	Para i<-0 hasta maximo-1 hacer
		Escribir '¡Hola Mundo!';
	FinPara
FinSubProceso

Proceso ProcesoPrincipal
	Saludar(5);
FinProceso
