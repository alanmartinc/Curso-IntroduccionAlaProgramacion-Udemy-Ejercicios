Algoritmo  IteracionesBucleParaExtendido
	
	Definir Contador1, Contador2 como Entero;
	
	// PRIMER PARA
	Para Contador1<-0 Hasta 9
		
		// SEGUNDO PARA
		Para Contador2<-0 Hasta 9
			Si Contador1=0 O Contador1 = 9 O Contador2=0 O Contador2=9 O Contador1=Contador2 O (Contador1+Contador2=9) Entonces
				Escribir Sin Saltar Contador1,Contador2 ' ';
			Sino
				Escribir Sin Saltar '   ';	
			FinSi
		FinPara
		
		Escribir '';
		
	FinPara
	
FinAlgoritmo

