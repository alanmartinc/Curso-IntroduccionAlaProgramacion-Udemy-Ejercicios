Algoritmo DefiniciónYAsignación
	
	// Se definen las variables
	
	Definir Edad Como Entero;
	Definir Nota Como Real;
	Definir LetraDNI Como Caracter;
	Definir NombreApellido como Cadena;
	Definir Encontrado Como Logico;
	
	// Se asignan las variables
	
	Nota <- 9.5;
	Edad <- 10;
	LetraDNI <- 'J';
	NombreApellido <- 'Alan Cabot';
	Encontrado <- FALSO;
	
	// Pide los valores
	
	Escribir 'Introduce la nota';
	Leer Nota;
	Escribir 'Introduce la edad';
	Leer Edad;
	Escribir 'Introduce la letra de DNI';
	Leer LetraDNI;
	Escribir 'Introduce el nombre y apellido';
	Leer NombreApellido;
	
	// Imprime los valores por pantalla
	
	Escribir 'La nota es ', Nota;
	Escribir 'La edad es ', Edad;
	Escribir 'La letra de DNI es ', LetraDNI;
	Escribir 'El nombre y apellido es ', NombreApellido;
	Escribir NombreApellido, ' Ha sacado un ', Nota;
	
FinAlgoritmo 