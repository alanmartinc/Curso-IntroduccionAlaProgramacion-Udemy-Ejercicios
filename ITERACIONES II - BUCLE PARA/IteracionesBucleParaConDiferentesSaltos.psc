Algoritmo  IteracionesBucleParaConDiferentesSaltos
	
	// También se puede especificar un salto incremental diferente a 1 para cada iteración
	Escribir "Para tradicional de 0 a 9 de 1 en 1";
	Para i<-0 hasta 9
		Escribir Sin Saltar i, " ";
	FinPara
	Escribir "";
	Escribir "";
	
	// Podemos especificar un salto de 2 en 2
	Escribir "Para de 0 a 19 de 2 en 2";
	Para i<-0 hasta 19 Con Paso 2
		Escribir Sin Saltar i, " ";
	FinPara
	Escribir "";
	Escribir "";
	
	// O de otro número
	Escribir "Para de 0 a 49 de 5 en 5";
	Para i<-0 hasta 49 Con Paso 5
		Escribir Sin Saltar i, " ";
	FinPara
	Escribir "";
	Escribir "";
	
	// Por supuesto también funciona con el para inverso
	// ¡Pero deberemos indicar el salto en negativo! 
	Escribir "Para inverso de 100 a 0 de -10 en -10";
	Para i<-100 hasta 0 Con Paso -10
		Escribir Sin Saltar i, " ";
	FinPara
	Escribir "";
	
FinAlgoritmo
