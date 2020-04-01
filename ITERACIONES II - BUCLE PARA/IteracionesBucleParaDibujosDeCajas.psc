Subproceso DibujarCajon(b,h)
	
	Escribir "Cajón ", b , "*", h;
	
	Para i<-0 hasta b-1
		Para j<-0 hasta h-1
			Escribir Sin Saltar '* ';
		FinPara
		Escribir '';
	FinPara
	
FinSubProceso


Algoritmo  Dibujos
	DibujarCajon(1,1);	
	DibujarCajon(2,4);	
	DibujarCajon(3,3);	
	DibujarCajon(8,4);	
	DibujarCajon(5,5);	
FinAlgoritmo
