Proceso EjemploArreglo
	
	// Definicion de un arreglo
	Definir ArregloDeNumeros Como Numerico;
	Dimension ArregloDeNumeros[10];	
	
	// Asignación manual
	ArregloDeNumeros[0]<-10;
	ArregloDeNumeros[1]<-45;
	ArregloDeNumeros[2]<-36;
	
	// Lectura por teclado
	Leer ArregloDeNumeros[3];
	Leer ArregloDeNumeros[4];
	
	// Las posiciones de la 5 a la 9 estan vacías
	
	// Escritura por pantalla manual
	Escribir 'ArregloDeNumeros[0] -> ', ArregloDeNumeros[0];
	Escribir 'ArregloDeNumeros[1] -> ', ArregloDeNumeros[1];
	Escribir 'ArregloDeNumeros[2] -> ', ArregloDeNumeros[2];
	Escribir 'ArregloDeNumeros[3] -> ', ArregloDeNumeros[3];
	Escribir 'ArregloDeNumeros[4] -> ', ArregloDeNumeros[4];
	Escribir 'ArregloDeNumeros[5] -> ', ArregloDeNumeros[5];
	Escribir 'ArregloDeNumeros[6] -> ', ArregloDeNumeros[6];
	Escribir 'ArregloDeNumeros[7] -> ', ArregloDeNumeros[7];
	Escribir 'ArregloDeNumeros[8] -> ', ArregloDeNumeros[8];
	Escribir 'ArregloDeNumeros[9] -> ', ArregloDeNumeros[9];
	Escribir '';
	
	// Escritura por pantalla secuencial
	Para i<-0 hasta 9 hacer 
		Escribir 'ArregloDeNumeros[',i,'] -> ', ArregloDeNumeros[i];
	FinPara
	
FinProceso
