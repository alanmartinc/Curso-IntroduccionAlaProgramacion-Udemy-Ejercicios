SubProceso resultado<-mi_suma(a, b)
	Definir resultado como Numerico;
	resultado <- a + b;
FinSubProceso

Proceso ProcesoPrincipal
	Definir N1, N2, R como Numericos;
	
	Escribir Sin Saltar 'Escribe un numero';
	Leer N1;
	Escribir Sin Saltar 'Escribe otro numero';
	Leer N2;
	R <- mi_suma(N1, N2);
	Escribir 'La suma de ',N1,'+',N2,' es: ', R;
FinProceso
