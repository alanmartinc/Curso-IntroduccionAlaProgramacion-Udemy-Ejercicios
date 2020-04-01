SubProceso DibujarJugada(tirada_j1, tirada_pc)
	// PIEDRA ES 1
	// PAPEL ES 2
	// TIJERA ES 3
	
	Segun tirada_j1 Hacer
		1: 
			Escribir Sin Saltar "TU: PIEDRA - ";
		2: 
			Escribir Sin Saltar "TU: PAPEL - ";
		3: 
			Escribir Sin Saltar "TU: TIJERAS - ";
	FinSegun
	
	Segun tirada_pc Hacer
		1: 
			Escribir "PC: PIEDRA";
		2: 
			Escribir "PC: PAPEL";
		3: 
			Escribir "PC: TIJERAS";
			
	FinSegun
	
FinSubProceso

SubProceso JugarUnaRonda(puntos_j1 Por Referencia, puntos_pc Por Referencia, ronda Por Referencia)
	//Declaramos variables
	// PIEDRA ES 1
	// PAPEL ES 2
	// TIJERA ES 3
	Definir tirada_j1, tirada_pc como Entero;
	ronda = ronda + 1;
	
	// Turno del jugador
	Escribir "Que quieres jugar?";
	Escribir "1)Piedra   2)Papel   3) Tijera";
	Repetir
		Leer tirada_j1;
	Hasta Que (tirada_j1=1 O tirada_j1=2 O tirada_j1=3)
	
	// Turno del PC
	tirada_pc = azar(3)+1;
	
	// Mostramos la jugada
	DibujarJugada(tirada_j1, tirada_pc);
	
	// Comprobar el resultado
	// Si empate
	Si (tirada_pc = tirada_j1) Entonces
		Escribir "¡Empate!";
		// Si no hay empate uno de los ha ganado
	Sino
		Si ( (tirada_j1 = 1 Y tirada_pc = 3) O (tirada_j1=2 Y tirada_pc = 1) O (tirada_j1=3 Y tirada_pc = 2) )
			Escribir "Ganas la ronda!";
			puntos_j1 <- puntos_j1 + 1;
		Sino
			Escribir "Pierdes la ronda";
			puntos_pc <- puntos_pc + 1;
		FinSi
	FinSi
	
	// Esperar unos segundos y limpiar pantalla
	Esperar 3 segundos;
	Limpiar Pantalla;
	
FinSubProceso

Proceso PiedraPapelTijeras
	// Definir las variables
	Definir salir como Logico;
	Definir puntos_j1, puntos_pc, ronda, respuesta como Enteros;
	
	salir <- FALSO;
	
	// Entraremos en el bucle de juego
	// hasta que el usuario quiera salirse
	Mientras (salir = FALSO)
		
		
		// Iniciar el marcador a cero
		// Iniciar las rondas a cero
		// Y también limpiamos la pantalla
		puntos_j1 = 0;
		puntos_pc = 0;
		ronda = 0;
		Limpiar Pantalla;
		
		// Comienza el juego
		// Repetiremos las rondas
		// hasta determinar un ganador
		Escribir "Empieza el juego";
		Repetir 
			Escribir "Ronda ", ronda+1, " - Tu: ", puntos_j1, " - PC: ", puntos_pc;
			JugarUnaRonda(puntos_j1,puntos_pc, ronda);
		Hasta Que (puntos_j1 = 3 O puntos_pc = 3)
		
		// Mostraremos quien ha ganado
		Si (puntos_j1 = 3) Entonces
			Escribir "Has ganado. ", puntos_j1, ' - ', puntos_pc;
		Sino
			Escribir "Has perdido. ", puntos_j1, ' - ', puntos_pc;
		FinSi
		
		// Preguntaremos si el usuario
		// quiere volver a jugar
		Escribir "Quieres salir?";
		Escribir "ENTER para salir o 1)Volver a jugar";
		Leer respuesta;
		Si (respuesta <> 1) Entonces
			salir <- VERDADERO;
		FinSi
		
	FinMientras
	
FinProceso
