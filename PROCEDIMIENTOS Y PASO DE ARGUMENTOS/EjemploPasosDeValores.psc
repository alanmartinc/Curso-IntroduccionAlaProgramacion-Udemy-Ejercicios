// Doblar es un procedimiento que toma una variable numérica
// por referencia y le duplica el valor modificando la propia variable
SubProceso Doblar(num Por Referencia)
	num <- num * 2;
FinSubProceso


// Triple es una función que toma una variable numérica
// por valor y devuelve el triple de su valor como resultado
Subproceso num <- Triple(num)
	num <- num * 3;
FinSubProceso


// Proceso Principal
Proceso Principal
	Definir n como Numerico;
	n <- 1;
	
	Escribir "Doblamos n 5 veces, con n=",n;
	// La función doblar toma el número y le modifica su propio valor
	Doblar(n);
	Escribir n;
	Doblar(n);
	Escribir n;
	Doblar(n);
	Escribir n;
	Doblar(n);
	Escribir n;
	Doblar(n);
	
	// ¿Cuanto vale n en este momento? (n*2*2*2*2*2)
	Escribir n;
	
	Escribir "Triple de n=",n;
	// En cambio Triple toma la variable por valor y devuelve su triple
	Escribir Triple(n);
	
	Escribir "Tres veces el triple de n=",n;
	// Tres veces el triple de n (n*3*3*3)
	Escribir Triple(Triple(Triple(n)));
	
	// Pero el valor original de n no se ha modificado
	Escribir "Finalmente n sigue valiendo";
	Escribir n;
	
FinProceso
