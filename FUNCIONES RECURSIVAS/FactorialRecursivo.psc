Subproceso resultado<-Factorial(num)
	Si (num <= 1) Entonces
		resultado <- 1;
	Sino 
		resultado <- num * Factorial(num-1);
	FinSi
	// Descomentad la siguiente línea
	Escribir num , "*Factorial(", num-1 ,") = ",resultado; 
	// Ejecutadlo paso a paso para observar como hasta el final no se llega al FinSi
	// Y entonces se sale de todos los FinSi de golpe, de dentro hacia afuera
FinSubProceso

Proceso ProcesoPrincipal
	Escribir Factorial(7);
FinProceso
