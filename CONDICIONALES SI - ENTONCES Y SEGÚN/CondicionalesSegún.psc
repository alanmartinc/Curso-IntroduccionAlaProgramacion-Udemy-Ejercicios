Algoritmo CondicionalesSegún
	
	// Condicional Según
	
	Definir NumeroA, NumeroB como Numericos;
	Definir  Operacion Como Caracter;
	
	Escribir Sin Saltar "Escribe el número A";
	Leer  NumeroA;
	
	Escribir Sin Saltar "Escribe el número B";
	Leer NumeroB;
	
	Escribir "Operaciones disponibles";
	Escribir "S: Suma";
	Escribir "R: Resta";
	Escribir "M: Multiplicación";
	Escribir "D: División";
	
	Escribir Sin Saltar "¿Qué operación queres ejercutar?";
	Escribir Sin Saltar "Escribe la letra en mayúscula o miniscula";
	
	Leer Operacion;
	
	Segun Operacion Hacer
		'S', 's':
			// aqui la suma
			Escribir "Has elegido la suma";
			Escribir NumeroA, '+', NumeroB;
			Escribir NumeroA+NumeroB;
			
		'R', 'r':
			// aqui la resta
			Escribir "Has elegido la resta";
			Escribir NumeroA, '-', NumeroB;
			Escribir NumeroA-NumeroB;
		'M', 'm':
			// aqui la multiplica
			Escribir "Has elegido la multiplicación";
			Escribir NumeroA, '*', NumeroB;
			Escribir NumeroA*NumeroB;
		'D', 'd':
			// aqui la divide
			Escribir "Has elegido la división";
			Escribir NumeroA, '/', NumeroB;
			Escribir NumeroA/NumeroB;
		De Otro Modo:
			Escribir "No has elegido la operación correcta";
	FinSegun
	
FinAlgoritmo
