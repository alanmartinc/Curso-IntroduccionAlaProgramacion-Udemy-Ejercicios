Proceso BusquedaSecuencialEjemplo
	
	Definir ArregloDeEnteros como Entero;
	Definir NumeroUsuario como Entero;
	Definir Encontrado como Logico;
	
	Encontrado <- FALSO;
	
	Dimension ArregloDeEnteros[5];
	
	Para i<-0 hasta 4 hacer
		ArregloDeEnteros[i] <- azar(20)+1;
	FinPara
	
	Para i<-0 hasta 4 hacer
		Escribir Sin Saltar ArregloDeEnteros[i], ' ';
	FinPara
	Escribir '';
	Escribir 'Introduce uno de los números que hay en el arreglo';
	Leer NumeroUsuario;
	
	Para i<-0 hasta 4 hacer
		Si NumeroUsuario = ArregloDeEnteros[i] Entonces
			Escribir 'Se ha encontrado el numero ',NumeroUsuario, ' en la posicion ArregloDeEnteros[',i,']';
			Encontrado <- VERDADERO;
		FinSi
	FinPara
	
	Si Encontrado = FALSO Entonces
		Escribir 'No se ha encontrado el numero ',NumeroUsuario, ' en el ArregloDeEnteros';
	FinSi
	
FinProceso
