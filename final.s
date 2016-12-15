.data
sudokuIni: 	.byte 2,3,6,0,4,8,0,9,0,4,0,0,0,5,2,8,3,1,1,0,0,3,0,0,0,4,0,4,7,0,0,5,0,0,8,0,1,0,0,2,9,3,0,0,7,0,3,0,0,8,0,0,2,1,0,2,0,8,0,3,0,0,5,3,0,5,9,6,0,0,0,0,0,6,0,5,7,0,4,0,3
sudokuSol: 	.byte 2,3,6,1,4,8,5,9,7,4,7,9,6,5,2,8,3,1,1,5,8,3,9,7,2,4,6,4,7,2,6,5,1,3,8,9,1,8,6,2,9,3,5,4,7,9,3,5,7,8,4,6,2,1,7,2,4,8,1,3,9,6,5,3,1,5,9,6,4,7,2,8,8,6,9,5,7,2,4,1,3
sudoku: 		.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
sudokuini2: .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
sudoku2: 		.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
coorx: 			.byte 0
coory: 			.byte 0
inventado:	.byte 0		# aqui guardo un cero si se juega con un sudoku predeterminado sino un 1 si jugamos con el inventado
aux:			.byte 0
aux2:			.byte 0
vacias:			.byte 0		# aqui se recogen las celdas vacias que quedan.
vacias2:		.byte 0		# para poder rescatarlo cuando sea
celda: 			.byte 0
suger: 			.byte 5
vSeguro: 		.byte 1
numacolocar: 	.byte 0
maxfila:		.byte 9		# pongo nueve poque comprueba hasta la celda 8 y pasa a la siguiente pero esa ya no la comprueba

mens_op1: 		.asciiz "0. Rellenar Celda"
mens_op2: 		.asciiz "1. Modificar Celda"
mens_op3: 		.asciiz "2. Sugerir Celda" #Opci�n limitada a un n� de veces
mens_op4: 		.asciiz "3. Valor Seguro" #Opci�n limitada a un n� de veces
mens_op5: 		.asciiz "4. Reiniciar Juego"
mens_op10: 		.asciiz "5. Reiniciar Partida"
mens_op6: 		.asciiz "6. Comprobar sudoku "
mens_op7: 		.asciiz "7. Mostrar Tablero "
mens_op8: 		.asciiz "8. Introdir el sudoku completo con el que quieres jugar"
mens_op9: 		.asciiz "9. Salir "
mens_op: 		.asciiz "\n Elija opcion:\n"
dificultad:		.asciiz "\n Bienvenido a SUDOKU Mips\n"
hori:			.asciiz		"-"
vert:			.asciiz		"| "
vert2:			.asciiz		"|"
cr:				.asciiz		"\n"
espacio:		.asciiz		" "
num_hori:		.asciiz		"\x  0  1  2  3  4  5  6  7  8"
car_y:			.asciiz		"y -----------------------------"

mennovalid:		.asciiz "\n El numero a colocar no es valido!!! \n"
mens_numnoval: 	.asciiz "\n El numero de opcion no es valido introduzca otro\n"
mens1:			.asciiz "\n Introduce el numero de columna de 0 a 8 \n"
mens2:			.asciiz "\n Introduce el numero de fila de 0 a 8 \n"
mens3:			.asciiz "\n Introduce el numero a colocar en la casilla, recuerda que tiene que estar entre 1 y 9 \n"
menfila:		.asciiz "\n Esta fila no existe!!\n"
mencol:			.asciiz "\n Esta columna no existe!!\n"
menllena:		.asciiz "\n La celda esta llena selecciona otra \n"
men_res1:		.asciiz "\n El numero se repite en la fila \n"
men_res2:		.asciiz "\n El numero se repite en la columna \n"
men_res3:		.asciiz "\n El numero esta repetido \n"
mens_mod:		.asciiz "\n Esta casilla no es modificable \n"
mens_vs:		.asciiz "\n No quedan mas valores seguros \n"
mens_suger:		.asciiz "\n No quedan mas sugerencias \n"
mens_col:		.asciiz "\n Columna: "
mens_fil:		.asciiz "\n Fila: "
mens_num:		.asciiz "\n Lo rellenamos con el numero "
mens_option:	.asciiz "\n �Aceptas esta sugerencia? \n"
mens_celda:		.asciiz	"\n El valor de la celda es: "
mensuger:		.asciiz	"\n Si desea almacenar pulse 1 sino pulse 2. \n"
mens_correcto:	.asciiz "\n El sudoku es correcto \n"
mens_salir:		.asciiz "\n GRACIAS POR JUGAR A SUDOKU Y HASTA LA PROXIMA, ADIOS.\n"
mensrespuesta:	.asciiz	"\n La respuesta es: \n"
menssugerfin1:	.asciiz	"\n No quedan disponibles mas sugerencias. \n"
menssugerfin2:	.asciiz	"\n La sugerencia no ha sido aceptada. \n"
sudoku_no_correcto: .asciiz "\n La solucion no es correcta\n "
mens_valor:		.asciiz "\n Valores seguros para gastar: "
mens_sugerencias:	.asciiz "\n Sugerencias para gastar: "
mens_ini:		.asciiz "\n Por favor introduzca los 81 caracteres del sudoku solucion\n"
numror:			.asciiz "\n El numero no es correcto, Por favor selecciona otro\n"
selec:			.asciiz "\n �Le gustaria jugar con el sudoku predeterminado (pulse 1)o con un sudoku creado por usted(pulse2)?)\n"
mensotronum:	.asciiz "\n El numero que intentas insertar no cumple con las restricciones del juego, por favor revisalo e insertalo bien\n"
mens_dificultad: .asciiz "\n Selecciona el nivel de dificultad para tu soduku inicial: Facil(pulsa 1);Medio(pulsa 2);Dificil(pulsa 3)\n"
mens_nores:		.asciiz "\n Este numero no cumple las restricciones, revisalo y vuelve a colocarlo bien\n"
l_horizontal:	.asciiz		"-"
l_horizontal2:	.asciiz		"@"
l_vertical:		.asciiz		": "
l_vertical2:	.asciiz		"||"
mens_rein:		.asciiz "\n �Quieres reiniciar la partida?\n"
bandera:		.asciiz "\n valor de inventado\n"
quedan_huecos:	.asciiz "\n Aun quedan huecos por rellenar\n"

.text

main:

#####################
####nueva partida####
#####################
nueva_partida:

	li	$t0, 0
	sb	$t0, vacias

	la		$a0, dificultad
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall
							# Aqui tendriamos que recoger la eleccion de dificultad del jugador
	la		$a0, cr
	li		$v0, 4
	syscall




	la		$a0, sudokuSol			# aqui implementamos los niveles de dificultad para el sudoku predefinido
	addi	$a0, $a0, -1
	la		$a1, sudokuini2

	jal copia_sudoku

	la		$a0, mens_dificultad
	li		$v0, 4
	syscall

	jal		polling_dificultad

	move 	$a3, $v0

	jal		nivel_dificultad

	la		$a0, sudokuini2			# aqui tengo el sudoku generado
	la		$a1, sudoku				# sudoku para jugar


	jal copia_sudoku		#	piensa para lo de los niveles de dificultad

	li	$t0, 0
	sb	$t0, inventado

usuario:

	jal 	inicializar

jugando:

	jal		imprime_tablero

jugando2:


	jal 	menu

	jal		polling_menu

	move	$t0,$v0

	beq		$t0, 0, rellenar_celda
	beq		$t0, 1, modificar_celda
	beq		$t0, 2, sugerir_celda
	beq		$t0, 3, valor_seguro
	beq		$t0, 4, reiniciar
	beq		$t0, 5, reiniciar_partida
	beq		$t0, 6, comprobar_sudoku
	beq		$t0, 7, mostrar_tablero
	beq		$t0, 8, pedir_sol
	beq		$t0, 9, salir
	bgt		$t0, 9, mensnumnoval
	blt		$t0, 1, mensnumnoval


	jr		$ra

mensnumnoval:

	la		$a0, mens_numnoval
	li		$v0, 4
	syscall

    j jugando

menu:

	la		$a0, mens_valor
	li		$v0, 4
	syscall

	lb		$a0,vSeguro					# En esta posicion tenemos los valores seguros y asi los imprimimos
	li		$v0, 1
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_sugerencias
	li		$v0, 4
	syscall

	lb		$a0,suger					# En esta posicion tenemos los valores seguros y asi los imprimimos
	li		$v0, 1
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op1
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op2
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op3
	li		$v0, 4
	syscall
	la		$a0, cr
	li		$v0, 4
	syscall

    la		$a0, mens_op4
	li		$v0, 4
	syscall
	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op5
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op10
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op6
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op7
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op8
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	la		$a0, mens_op9
	li		$v0, 4
	syscall

	la		$a0, cr
	li		$v0, 4
	syscall

	jr	$ra




#################################################
######## RUTINA INICIALIZAR #####################
#################################################

inicializar:

	addi	$sp, $sp, -12				# USO DE LA PILA
	sw	$ra, 8($sp)						# Guardamos $ra para regresar
	sw	$a0, 4($sp)
	sw	$a1, 0($sp)

	li	$t0, 0
	sb	$t0, coorx
	li	$t0, 0
	sb	$t0, coory
	li	$t0, 0
	sb	$t0, aux2
	li	$t0, 0
	sb	$t0, aux
	li	$t0, 0
	sb	$t0, celda
	li	$t0, 5
	sb	$t0, suger
	li	$t0, 50
	sb	$t0, vSeguro
	li	$t0,9
	sb	$t0,maxfila


	lw		$a1, 0($sp)
	lw		$a0, 4($sp)
	lw		$ra, 8($sp)
	addi	$sp, $sp, 12
	jr		$ra


#############################
#							#
#		RELLENAR_CELDA		#
#							#
#############################
rellenar_celda:

	jal 	pedir_celda

	la		$a0, sudoku
	lb		$a1, coory
	lb		$a2, coorx

	jal		obten_celda

	bne		$v0,0,llena

inv:
	jal 	pedir_num

	la		$a0, cr
	li		$v0, 4
	syscall

	lb		$a0, coorx
	lb		$a1, coory
	lb		$a2, numacolocar
	la		$a3, sudoku

	jal		restricciones							# Aqui van las restricciones

	bne		$v0, 0, jugando							# si no cumple las restricciones se devuelve al menu

	la		$a0, sudoku								# aqui recuperamos los datos necesarios para cambia celda
	lb		$a1, coory
	lb		$a2, coorx
	lb		$a3, numacolocar

	jal cambia_celda

	lb		$t2, vacias								# actualizamos el valor de vacias
	addi	$t2, $t2, -1
	sb		$t2, vacias

	j jugando

llena:


	la		$a0, menllena
	li		$v0, 4
	syscall

	j	rellenar_celda


invalido:

	la		$a0, mennovalid
	li		$v0, 4
	syscall

	j		rellenar_celda


#################################################################
#																#
# Modificar_celda												#
#			$a0 = coorx											#
#			$a1 = coory											#
#			$a2 = numacolocar									#
#			$a3 = direccion del tablero							#
#																#
#################################################################
modificar_celda:

	jal 	pedir_celda


	la		$a0, sudokuini2

	lb		$a1, coory
	lb		$a2, coorx

	jal		obten_celda

	bne		$v0, 0, no_mod

	jal 	pedir_num

	lb		$a0, coorx								# Colocamos los valores pertinentes para entrar a restricciones
	lb		$a1, coory
	lb		$a2, numacolocar
	la		$a3, sudoku

	jal		restricciones							# Aqui van las restricciones

	bne		$v0, 0, jugando							#si no cumple las restricciones se devuelve al menu

	la		$a0, sudoku								#aqui recuperamos los datos necesarios para cambia celda
	lb		$a1, coory
	lb		$a2, coorx
	lb		$a3, numacolocar

	jal cambia_celda

	j jugando

no_mod:
	la		$a0, mens_mod
	li		$v0, 4
	syscall

	j		modificar_celda

#################################################################################
#		Sugerir_celda:	$a0 = direccion del tablero								#
#																				#
#################################################################################

sugerir_celda:

			addi	$sp, $sp, -20			# Apila
			sw		$ra, 0($sp)
			sw		$a0, 4($sp)


			lb		$a3, suger					# Carga en $a3 el valor de sugerencias restantes
			beq		$a3, 0, finsuge1			# Si no quedan mas sugerencias, se acaba

obtener_celda:

			li		$a0, 9					# Numero maximo aleatorio

			jal aleatorio

			sb		$v0, coorx				# Coordenada de la columna
			sw		$v0, 8($sp)

			li		$a0, 9					# Numero maximo aleatorio
			jal aleatorio
			sb		$v0, coory				# Coordenada de la fila
			sw		$v0, 12($sp)

			la		$a0,sudoku				# Carga el tablero
			lb		$a1,12($sp)
			lb		$a2,8($sp)

			jal		obten_celda

			bne		$v0, 0, obtener_celda			# En $v0 esta el valor de la celda actual. Si es distinto sigue buscando, de lo contrario prosigue.


			la		$a0, mens_fil					# Imprime por pantalla las coordenadas de la celda
			li		$v0, 4							# Fila
			syscall

			lb		$a0, 12($sp)
			li		$v0,1
			syscall

			la		$a0, cr							# Retorno de carro
			li 		$v0, 4
			syscall
			###columna
			la		$a0, mens_col					# Imprime por pantalla las coordenadas de la celda
			li		$v0, 4							# Columna
			syscall

			lb		$a0, 8($sp)
			li		$v0,1
			syscall

			la		$a0, cr							# Retorno de carro
			li 		$v0, 4
			syscall




			lw		$a1, 12($sp)					# Cargamos coory

			li		$t7, 1
			li		$t6, 9

busc_val:


			sb		$t7, numacolocar			# Valor de celda

			lw		$a0, 8($sp)					# Carga coorx
			lb		$a2, numacolocar
			la 		$a3, sudoku

			jal restricciones				# Llama al procedimiento restricciones

			beq		$v0, 0, comparar	    #

			addi	$t7, $t7, 1

			ble		$t7, $t6, busc_val

comparar:
			lb		$a3, suger				# Guarda el valor obtenido en $a3.
			addi	$a3, $a3, -1			# Incrementa del valor de sugerencia en -1.
			sb		$a3, suger				# Guarda la nueva cantidad de sugerencias.



			la		$a0, mens_option		# Imprime por pantalla el valor obtenido
			li		$v0, 4
			syscall


			la		$a0, mens_celda			# Muestra el mensaje por pantalla
			li		$v0, 4
			syscall

			lb		$a0, numacolocar
			li		$v0, 1
			syscall

			la		$a0, cr					# Retorno de carro
			li 		$v0, 4
			syscall

vuelve:
			la		$a0, mensuger			# Muestra por pantalla el mensaje para elegir
			li		$v0, 4
			syscall

			jal 	polling_suge

			move 	$t0, $v0				# Guarda la respuesta

			la		$a0, mensrespuesta
			li		$v0, 4
			syscall

			move	$a0, $t0
			li		$v0,1
			syscall

			beq		$t0, 2, finsuge2




			la		$a0, sudoku			# Carga los valores para la funcion cambia_celda
			lb		$a1, 12($sp)
			lb		$a2, 8($sp)
			lb		$a3, numacolocar

			jal cambia_celda			# Llama a cambia_celda

			lb		$t2, vacias								# actualizamos el valor de vacias
			addi	$t2, $t2, -1
			sb		$t2, vacias


			li		$v0, 0					# Comprobacion de las restricciones

			la		$a0, cr					# Retorno de carro
			li 		$v0, 4
			syscall

			lw		$a0, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 20
			j		jugando

finsuge1:
			li		$v0, 1					# Comprobacion de las restricciones
			la		$a0, menssugerfin1			# Sugerencias agotadas
			li		$v0, 4
			syscall

			la		$a0, cr					# Retorno de carro
			li 		$v0, 4
			syscall

			lw		$a0, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 20
			j		jugando

finsuge2:
			li		$v0, 1					# Comprobacion de las restricciones
			la		$a0, menssugerfin2			# Mensaje de sugerencia no aceptada
			li		$v0, 4
			syscall

			lw		$a0, 4($sp)				# Desapila
			lw		$ra, 0($sp)
			addi	$sp, $sp, 20

			la		$a0, cr					# Retorno de carro
			li 		$v0, 4
			syscall


			j		jugando


#################################################################
#		Valor_seguro:	$a0 = x									#
#						$a1 = y									#
#						$a2 = direccion del tablero				#
#																#
#################################################################

valor_seguro:

	lb		$t0, vSeguro
	beq		$t0, 0, no_hay

	jal 	pedir_celda

	la		$a0, sudoku
	lb		$a1, coory
	lb		$a2, coorx

	jal		obten_celda

	bne		$v0,0,llena2

	lb		$t0, vSeguro
	addi	$t0, $t0, -1
	sb		$t0, vSeguro

	lb		$t5, inventado				# Con este valor sabemos si se esta jugando con el sudoku predeterminado u otro invetado
	beq		$t5, 1, invent2
	la		$a2, sudokuSol				# si se esta jugando con el predeterminado cogemos el valor de sudokusol
	addi	$a2, $a2, -1				# nos situamos en la primera posicion de sudokusol
	j		predet2

invent2:
	la		$a2, sudoku2				# si es inventado cogemos el valor seguro del sudoku que hemos recogido
predet2:

	move	$a0, $a2
	lb		$a1, coory
	lb		$a2, coorx

	jal		obten_celda

	sb		$v0, numacolocar

	la		$a0, sudoku								#aqui recuperamos los datos necesarios para cambia celda
	lb		$a1, coory
	lb		$a2, coorx
	lb		$a3, numacolocar

	jal cambia_celda

	lb		$t2, vacias								# actualizamos el valor de vacias
	addi	$t2, $t2, -1
	sb		$t2, vacias

	j jugando

no_hay:

	la		$a0, mens_vs
	li		$v0, 4
	syscall

	j 		jugando

llena2:

	la		$a0, menllena
	li		$v0, 4
	syscall

	j	valor_seguro


#####################################################
#		Reiniciar: vuelve a pedir el nivel de		#
#					dificultad y copia de nuevo el 	#
#					sudoku elegido en sudoku		#
#####################################################

reiniciar:

	jal		nueva_partida

##########################################################################
#  comprobar_sudoku: Comprueba que la solucion coincide con el sudokuSol #
##########################################################################

comprobar_sudoku:


			la		$a0, sudoku					# Cargamos sudoku en $s0
			lb		$t5, inventado				# Con este valor sabemos si se esta jugando con el sudoku predeterminado u otro invetado

			beq		$t5, 1, invent


			la		$a1, sudokuSol				# Cargamos sudokusol en $a1
			addi	$a1, $a1, -1				# Es necesario restarle para situarlo en la primera posicion
			j		predet
invent:
			la		$a1, sudoku2
predet:

			bne		$t2, 0, no_correcto2

			jal 	comprobar

			beq		$v0, 1, no_correcto

			la	$a0, mens_correcto
			li	$v0, 4
			syscall

			j		bien

no_correcto2:

			la	$a0, quedan_huecos				# el sudoku no sera correcto si no se llena por completo
			li	$v0, 4
			syscall

			j jugando

no_correcto:

			la	$a0, sudoku_no_correcto
			li	$v0, 4
			syscall

bien:


			j		jugando


#########################
#						#
#		Salir			#
#						#
#########################

salir:

			la 	$a0, mens_salir
			li 	$v0, 4
			syscall

			li 	$v0, 10
			syscall

#####################################
#									#
#		MOSTRAR_TABLERO				#
#									#
#####################################

mostrar_tablero:

			la		$a0, sudoku
			jal		imprime_tablero

			j		jugando2
#####################################
#									#
#			Pedir_sol				#
#									#
#####################################

pedir_sol:

		li 		$t7, 1
		sb		$t7, inventado			# la pongo a 1 para saber que se juega con un sudoku inventado

		la		$a0, mens_ini
		li		$v0, 4
		syscall

		jal 	pantalla_sol

		la		$a0, sudoku2
		la		$a1, sudokuini2

		jal 	copia_sudoku

		la		$a0, mens_dificultad
		li		$v0, 4
		syscall

		jal		polling_dificultad

		move 	$a3, $v0

		jal		nivel_dificultad

		la		$a0, sudokuini2			# aqui tengo el sudoku generado
		la		$a1, sudoku				# sudoku para jugar

		jal		copia_sudoku			# copiamos el sudoku generado en sudoku para jugar con el

		j		usuario


#################################
#								#
#		REINICIAR_PARTIDA		#		# esta funcion reinicia una partida concreta no el juego por completo
#								#
#################################

reiniciar_partida:

		lb		$t1, inventado

		beq		$t1, 0, reiniciar		# si se juega con el predeterminado reiniciamos la partida normalmente

		lb		$t3, vacias2
		move	$t4, $t3
		sb		$t4, vacias				# restauro el valor de vacias

		la		$a0, sudokuini2			# vuelvo a poner el sudoku generado en sudoku
		la		$a1, sudoku

		jal copia_sudoku

		j		usuario




#################################################################################################
#																								#
#		PANTALLA_SOL: va recogiendo los valores de pantalla y guardandolos en sudoku2			#
#																								#
#################################################################################################

pantalla_sol:

	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	li		$t0, 0
	sb		$t0,coorx
	sb		$t0,coory

etiq:
etiq2:
	lb		$a2, coorx
	lb		$a1, coory

	jal 	polling_menu

	sb		$v0, numacolocar

	lb		$a0, coorx
	lb		$a1, coory

	lb		$a2, numacolocar
	la		$a3, sudoku2

	jal		restricciones

	bne		$v0, 0, nores

	lb		$a2, coorx
	lb		$a1, coory
	la 		$a0, sudoku2
	lb		$a3, numacolocar

	jal		cambia_celda

	lb 		$t0, coorx
	addi	$t0, $t0, 1
	sb		$t0, coorx

	blt		$t0, 9, etiq

	lb 		$t1, coory
	addi	$t1, $t1, 1
	sb		$t1,coory
	li		$t0, 0
	sb		$t0, coorx

	blt		$t1, 9, etiq2

	lw		$ra, 0($sp)
	addi	$sp, $sp, 4
	jr		$ra

nores:

	la		$a0, mens_nores
	li		$v0, 4
	syscall

	j 		etiq

#################################################################
#																#
#	COMPROBAR: recibe en $a0 y $a1 los tableros a comprobar		#
#																#
#################################################################

comprobar:

			addi	$sp, $sp, -4
			sw		$ra, 0($sp)


			li		$t1, 0
			move	$s0, $a0
			move	$s1, $a1

			li		$t0, 0
			sb		$t0, coorx
			sb		$t0, coory

comprobando:

			move	$a0, $s0
			lb		$a1, coory
			lb		$a2, coorx

			jal		obten_celda

			move	$s2,$v0

			move	$a0, $v0
			li		$v0, 1
			syscall

			la		$a0, cr
			li		$v0, 4
			syscall

			move	$a0, $s1
			lb		$a1, coory
			lb		$a2, coorx

			jal		obten_celda

			move	$s3,$v0

			move	$a0, $v0
			li		$v0, 1
			syscall

			la		$a0, cr
			li		$v0, 4
			syscall

			bne		$s2, $s3, mal		# Si el contenido de sudoku es distinto al de sudokusol el sudoku esta mal resuelto

			lb		$t5, coorx
			addi	$t5, $t5, 1
			sb		$t5, coorx
			li		$s4, 9
			bne		$s4, $t5, comprobando

			lb		$t6, coory
			addi	$t6, $t6, 1
			sb		$t6, coory

			lb		$t5, coorx
			li		$t5, 0
			sb		$t5, coorx


			bne		$t6, $s4, comprobando		# Mientras $t1 sea menor que 81 seguimos comprobando

			li		$v0, 0					# Si pasa por aqui es porque es correcto por lo que la salida de $v0 es 0

			lw		$ra, 0($sp)
			addi	$sp, $sp, 4

			jr		$ra
mal:
			li		$v0, 1

			lw		$ra, 0($sp)
			addi	$sp, $sp, 4

			jr		$ra


#########################################
#										#
#			dibujar tablero				#
#										#
#########################################

 imprime_tablero:


			addi	$sp, $sp, -16					# USO DE LA PILA
			sw		$ra, 12($sp)					# Guardamos el valor de $31 para poder regresar
			sw		$a0, 8($sp)
			sw		$a1, 4($sp)
			sw		$a2, 0($sp)

			li		$t0, 0							# Inicializa $t0
			li		$t1, 0							# Inicializa $t1

			la		$a0, num_hori
			li		$v0, 4
			syscall
			jal		ret_carro
			la		$a0, car_y
			li		$v0, 4
			syscall


			jal 	ret_carro
loopy:
			move	$a0, $t1
			li		$v0, 1
			syscall
			la		$a0, espacio
			li		$v0, 4
			syscall
			jal		linea_vertical2

loopx:		move	$a1, $t1
			move	$a2, $t0

			sw		$t0, 4($sp)
			sw		$t1, 0($sp)

			la		$a0, sudoku

			jal		obten_celda


			move	$a0, $v0						# imprime un numero del sudoku
			li		$v0, 1
			syscall

			lw		$t0, 4($sp)
			lw		$t1, 0($sp)

			beq 	$t0, 2, index
			beq 	$t0, 5, index
			beq 	$t0, 8, index
			jal 	linea_vertical
index:

			bne		$t0, 2, v_uno
			jal		linea_vertical2
v_uno:
			bne		$t0, 5, v_dos
			jal		linea_vertical2
v_dos:
			bne		$t0, 8, v_tres
			jal		linea_vertical2
v_tres:



			addi	$t0, $t0, 1


			ble		$t0, 8, loopx

			addi	$t1, $t1, 1
			bne		$t1, 3, h_uno
			jal		ret_carro
			jal 	linea_horizontal
h_uno:		bne		$t1, 6, h_dos					#imprime linea doble
			jal		ret_carro
			jal		linea_horizontal
h_dos:		bne		$t1, 9, h_tres
			jal		ret_carro
			jal		linea_horizontal

h_tres:		li		$t0, 0
			jal		ret_carro						# Imprime un retorno de carro cada vez que cambia de fila
			jal 	ret_carro


			beq		$t1, 9, siguiente


siguiente:
			ble		$t1, 8, loopy


			lw		$ra, 12($sp)					# Guardamos el valor de $31 para poder regresar
			lw		$a0, 8($sp)
			lw		$a1, 4($sp)
			lw		$a2, 0($sp)
			addi	$sp, $sp, 16					# USO DE LA PILA
			jr		$ra


linea_horizontal:

			addi	$sp, $sp, -4					# USO DE LA PILA
			sw		$ra, 0($sp)						# Guardamos el valor de $31 para poder regresar

			li		$t7, 0							#inicializo el valor del bucle
			la		$a0, espacio
			li		$v0, 4
			syscall
			syscall
loop_l_hor:
			la		$a0, l_horizontal				# imprime una linea horizontal
			li		$v0, 4
			syscall

			addi	$t7, $t7, 1
			ble		$t7, 28, loop_l_hor				# imprime la linea horizontal 27 veces para que cubra todo el sudoku

			lw		$ra, 0($sp)
			addi	$sp, $sp, 4
			jr		$ra

linea_vertical:
			addi	$sp, $sp, -4					# USO DE LA PILA
			sw		$ra, 0($sp)						# Guardamos el valor de $31 para poder regresar

			la		$a0, l_vertical					# imprime una linea vertical
			li		$v0, 4
			syscall

			lw		$ra, 0($sp)
			addi	$sp, $sp, 4
			jr		$ra

linea_vertical2:
			addi	$sp, $sp, -4					# USO DE LA PILA
			sw		$ra, 0($sp)						# Guardamos el valor de $31 para poder regresar

			la		$a0, l_vertical2				# imprime una linea vertical
			li		$v0, 4
			syscall

			lw		$ra, 0($sp)
			addi	$sp, $sp, 4
			jr		$ra





#########################################################################################
#																						#
# obten_celda. obtiene el valor de una celda concreta segun los valores fila y columna  #
#					$a0 = tablero														#
#					$a1 = fila															#
#					$a2 = columna														#
#					$a3 = tama�o matriz													#
#																						#
#########################################################################################

obten_celda:

	addi	$sp, $sp, -4			# Apilamos
	sw		$ra, 0($sp)


	jal		direccion_celda			# Obtenemos la direccion de la celda la cual queremos obtener su contenido

	add		$t0, $a0, $v0			# Suma el numero obtenido en direccion celda a la direccion inicial del tablero

	lb		$v0, 0($t0)				# Cargamos el valor de la celda

	lw		$ra, 0($sp)
	addi	$sp, $sp, 4
	jr		$ra						# Desapilamos



########################################################################################
# FORMULA PARA OBTENER LA DIRECCI�N DE LA CELDA:									   #
#	$a1 fila 																		   #
#	$a2 la columna                                                                     #
#                                                                                      #
#   9*[(N�Fila DIV 3)*3 + N�Columna DIV 3] + [(N�Fila MOD 3)*3 + N�Columna MOD 3] + 1  #
#                                                                                      #
########################################################################################

direccion_celda:

	addi	$sp, $sp, -24		# Apilamos
	sw		$t2, 20($sp)
	sw		$a0, 16($sp)
	sw		$a1, 12($sp)
	sw		$t1, 8($sp)
	sw		$t0, 4($sp)
	sw		$ra, 0($sp)

	li		$t0, 3
	li		$t1, 9

	div		$a1, $t0			# Numero de la fila entre 3, el cociente y el resto se guardan en LO y HI
	mflo	$t2					# Guardamos el cociente en $t2
	mfhi	$t3					# Guardamos el resto en $t3
	div		$a2, $t0			# Numero de columna entre 3
	mflo	$t4					# Guardamos el cociente en $t4
	mfhi	$t5					# Guardamos el resto en $t5
	mul		$t2, $t2, $t0		# $t2 := (N�Fila DIV 3)*3
	add		$t2, $t2, $t4		# $t2 := $t2 + (N�Columna DIV 3)
	mul		$t2, $t2, $t1		# $t2 := $t2*9
	mul		$t3, $t3, $t0		# $t3 := (N�Fila MOD 3) *3
	add		$t3, $t3, $t5		# $t3 := $t3 + N�Columna MOD 3)
	add		$t2, $t2, $t3
	addi	$t2, $t2, 1
	move	$v0, $t2


	lw		$ra, 0($sp)
	lw		$t0, 4($sp)
	lw		$t1, 8($sp)
	lw		$a1, 12($sp)
	lw		$a0, 16($sp)
	lw		$t2, 20($sp)
	addi	$sp, $sp, 24		# Desapilamos
	jr		$ra



ret_carro:

		addi	$sp, $sp, -12
		sw		$v0, 8($sp)
		sw		$a0, 4($sp)
		sw		$ra, 0($sp)

		la 		$a0, cr
		li		$v0, 4
		syscall

		lw		$ra, 0($sp)
		lw		$a0, 4($sp)
		lw		$v0, 8($sp)
		addi	$sp, $sp, 12
		jr		$ra


#############################################################################
# copia_sudoku
# $a0: Tiene la direccion del sudoku que va a ser copiado
# $a1: Tiene la direccion del sudoku sobre el que se va a copiar
# Utiliza las rutinas obten_celda y cambia_celda
##############################################################################
copia_sudoku:
				addi	$sp, $sp, -24			# Apilamos
				sw		$ra, 8($sp)


				li		$t0, 0					# Inicializa $t0 (columna)

				sb		$t0, coorx
				sb		$t0, coory

fil:
col:

				sw		$a1, 4($sp)				# Para no modificar $t1 y $t0 en ninguna de las llamadas a otras subrutinas nos vemos obligados a apilar antes de llegar a ellas
				lb		$a1, coorx
				lb 		$a2, coory
				jal		obten_celda				# Saltamos a obtener celda para obtener el valor de la celda a colocar
				sw		$a0, 12($sp)
				lw		$a1, 4($sp)
				move   	$a0, $a1				# Cargamos sudoku en $a0 ya k es donde vamos a colocar la celda obtenida
				lb		$a1, coorx
				lb 		$a2, coory
				move	$a3, $v0				# Guardamos el valor a colocar en $a3

				jal		cambia_celda			# Cambiamos la celda
				lw   	$a0, 12($sp)
				lw		$a1, 4($sp)


				lb		$t0, coorx
				lb 		$t1, coory
				addi	$t0, $t0, 1
				sb		$t0, coorx
				ble		$t0, 8, col				# Si $t0 (columna) menor o igual que 8 no hemos llegado al final de la fila por lo que seguimos imprimiendo
				addi	$t1, $t1, 1					# Si $t0 es mayor que 8 sumamos 1 a la fila
				sb		$t1, coory
				li		$t0, 0				# Inicializamos la columna(para empezar desde el principio de la nueva fila
				sb		$t0, coorx
				ble		$t1, 8, fil				# Si $t1 (fila) es mayor que ocho quiere decir que hemos llegado al final

				lw		$ra, 8($sp)
				addi	$sp, $sp, 24
				jr		$ra						# Desapilamos

#####################################################################################################
#  Cambia_celda										            									#
#   Descripci�n: Cambia el valor de una de las celdas de un tablero                                 #
# 														   										 	#
#     $a0 = direcci�n del tablero a modificar.        	        									#
#	  $a1 = Fila.           								   	 									#
#	  $a2 = Columna.											    								#
#	  $a3 = Valor a colocar.		 	    														#
#                                                                                                   #
#####################################################################################################

cambia_celda:

		addi	$sp, $sp, -8			# Apilamos
		sw		$v0, 4($sp)
		sw		$ra, 0($sp)

		jal		direccion_celda			# Obtenemos la direccion de la celda a cambiar

		add		$t0, $a0, $v0			# Sumamos al tablero la direccion de la casilla a cambiar
		sb		$a3, 0($t0)				# Ponemos en la direccion de la celda antes calculada el valor a colocar

		lw		$ra, 0($sp)
		lw		$v0, 4($sp)
		addi 	$sp, $sp, 8				# Desapilamos

		jr		$ra




#################################################################
#																#
# pedir_num: pide el numero a colocar el la casilla selecionada	#
#																#
#################################################################
pedir_num:

	addi 	$sp, $sp, -4
	sw 		$ra, 0($sp)

num:
	la 		$a0, mens3
	li		$v0, 4
	syscall

	jal		polling_menu

	blt		$v0,1, numer
	bgt		$v0,9, numer

	sb		$v0,numacolocar

	lw 		$ra, 0($sp)
	addi 	$sp, $sp, 4
	jr $ra

numer:
	la		$a0, numror
	li		$v0, 4
	syscall


	j	num

#########################################################################################################################################
#																																		#
#pedir_celda: pide al usuario la fila y la columna, no pide el valor a colocar porque en el caso de que la casilla este ocupada volvera #
#     a pedir la celda.Nos devuelve en $v1 la coordenaday y en $v0 la coordenada x														#
#########################################################################################################################################

pedir_celda:

	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	la 		$a0, cr
	li		$v0, 4
	syscall

fil2:

	la 		$a0, mens2
	li		$v0, 4
	syscall

	jal		polling_celda

	jal ret_carro

	blt		$v0,0, filno		#Si el numero introducido no est� entre 0 y 8 salta mensaje error
	bgt		$v0,8, filno

	move 	$v1, $v0			#lo ponemos aqui ya que las subrutinas siguientes lo usan asi

	sb		$v1,coory			#guardo el valor de la fila en su espacio reservado para no modificarlo y poder recuperarlo mas tarde

col2:
	la $a0, mens1				#pedimos la columna, coordenada x
	li $v0, 4
	syscall

	jal		polling_celda

	jal		ret_carro

	blt		$v0,0, colno		#Si el numero introducido no est� entre 0 y 8 salta mensaje error
	bgt		$v0,8, colno

	sb		$v0,coorx			##guardo el valor de la columna en su espacio reservado para no modificarlo y poder recuperarlo mas tarde
								####   tenemos en $v0 la coordenada x y en $v1 la coordenada y

	lw		$ra, 0($sp)
	addi	$sp, $sp, 4
	jr $ra

filno:

	la 		$a0, menfila
	li		$v0, 4
	syscall

	j fil2

colno:

	la 		$a0, mencol
	li		$v0, 4
	syscall

	j col2

#####################################################################################################################
#																													#
#			RESTRICCIONES:$a0 = x	(columna)																				#
#						  $a1 = y	(fila)																				#
#                         $a2 = numacolocar																			#
#                         $a3 = direccion del tablero																#
#	                      $v0 = devuelve 0 si es correcto y 1 si es incorrecto										#
#####################################################################################################################


restricciones:
			addi	$sp, $sp, -16
			sw		$ra, 0($sp)
			sw		$a2, 4($sp)
			sw		$a1, 8($sp)
			sw		$a0, 12($sp)

			li		$a1, 0					# Inicializamos la fila para llamar direccion_celda
			move	$t0, $a3

											## En loop_col comprobamos si hay algun numero igual al que queremos poner
											  ## en la columna en la que se encuentra la celda donde lo vamos a colocar
loop_col:
			li		$t1, 0
			move	$a2, $a0				# Pasamos a $a2 la columna

			jal 	direccion_celda			# Saltamos a calcular la direccion de la celda

			add		$t1, $t0, $v0			# Sumamos a la direccion obtenida al tablero
			lb 		$t5, 0($t1)				# Cargamos el valor de la celda a comprobar
			lb		$a2, numacolocar		# Cargamos el numero a insertar en $a2
			beq		$a2, $t5,imposible   	# Comparamos los 2 valores y si son iguales es un caso no permitido
			addi	$a1, $a1, 1				# Sumamos 1 a la fila
			ble		$a1, 8, loop_col		# Mientras la fila sea menor que 8 seguimos avanzando.

			move	$t0, $a3
			li		$a2, 0					# inicializo la columna a 0
			lw		$a1, 8($sp)				# Restauramos el valor de la fila para comenzar la comprobacion de la fila en cuestion


											# Hacemos la misma comprobacion que para la columna pero en la fila

loop_fila:
			li		$t1, 0					# Movemos la contante 0 a $t1

			jal		direccion_celda

			add		$t1, $t0, $v0			# Sumamos a la direccion obtenida al tablero
			lb		$t5, 0($t1)				# Cargamos el valor de la celda a comprobar
			lb		$t3, numacolocar		# Cargamos el numero a colocar
			beq		$t3, $t5, imposible2	    # Comparamos los 2 valores y si son iguales es un caso no permitido
			addi	$a2, $a2, 1				# Sumamos 1 a la columna

			ble		$a2, 8, loop_fila		# Mientras la columna sea menor que 8 seguimos avanzando


			lw		$a1, 8($sp)				# Restauramos el valor de la fila
			lw		$a0, 12($sp)			# Restauramos el valor de la columna
			jal		direccion_bloque

			move	$t0, $a3


			add		$t0, $t0, $t2			# Sumamos dudoku y el numero obtenido en direccion bloque
			li		$t1, 0

loop_bloq:

			lb		$t5, 0($t0)				# Cargamos el valor de la celda a comprobar



			lb		$a2, numacolocar		# Cargamos el numero a colocar
			beq		$a2, $t5, imposible3		# Si el valor a colocar es igual al que hay en la celda, es un caso imposible
			addi	$t0, $t0, 1				# Sumamos 1 para ir avanzando en la celda (Aunque realmente avanzamos sobre el array del .data)
			addi	$t1, $t1, 1				# Sumamos 1 al contador
			ble		$t1, 8, loop_bloq		# Continuamos hasta comprobar las 8 celdas del bloque

			li		$v0, 0					# Si cumple las restricciones $v0 devuelve 0

			lw		$a0, 12($sp)
			lw		$a1, 8($sp)
			lw		$a2, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 16

			jr		$ra

imposible:
			li		$v0, 1					# Si no se cumplen las restricciones $v0 devuelve 1

			la		$a0, men_res2
			li		$v0, 4
			syscall

			lw		$a0, 12($sp)
			lw		$a1, 8($sp)
			lw		$a2, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 16

			jr		$ra


imposible2:
			li		$v0, 1					# Si no se cumplen las restricciones $v0 devuelve 1

			la		$a0, men_res1
			li		$v0, 4
			syscall

			lw		$a0, 12($sp)
			lw		$a1, 8($sp)
			lw		$a2, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 16

			jr		$ra

imposible3:
			li		$v0, 1					# Si no se cumplen las restricciones $v0 devuelve 1

			la		$a0, men_res3
			li		$v0, 4
			syscall

			lw		$a0, 12($sp)
			lw		$a1, 8($sp)
			lw		$a2, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 16

			jr		$ra


#############################################################################################
#	Direccion bloque:	Basandonos en la fomula para calcular la direccion de la celda      #
#							hemos hecho una fomula para recorrer los cuadros 3X3 del sudoku #
#						    e ir comprobando cada celda.	                                #
#############################################################################################

direccion_bloque:


			addi	$sp, $sp, -12
			sw		$t0, 8($sp)
			sw		$t1, 4($sp)
			sw		$ra, 0($sp)

			li		$t0, 3
			li		$t1, 9

			div		$a1, $t0		# Dividimos el numero de la fila entre 3, el cociente y el resto se guardan en LO y LI
			mflo	$t2				# Guardamos el valor del cociente en $t2
			div		$a0, $t0		# Dividimos el numero de columna entre 3
			mflo	$t4				# Guardamos el valor del cociente en $t4
			mul		$t2, $t2, $t0	# $t2 := (N�Fila DIV 3)*3
			add		$t2, $t2, $t4	# $t2 := $t2 + (N�Columna DIV 3)
			mul		$t2, $t2, $t1	# $t2 := $t2*9
			addi	$t2, $t2, 1		# estamos colocados en la primera celda del bloque



			lw		$ra, 0($sp)
			lw		$t1, 4($sp)
			lw		$t0, 8($sp)
			addi	$sp, $sp, 12
			jr		$ra

#############################################################################################
#Descripcion:   dada una semilla y numero maximo genera un numero pseudoaleatorio entre 0 	#
#				y el numero maximo -1														#
#Parametros																					#
#			$a0= numero maximo para el numero aleatorio										#
#devuelve																					#
#			$v0 = numero aleatorio generado													#
#############################################################################################

aleatorio:
			addi	$sp, $sp, -4
			sw		$ra, 0($sp)
			addu	$t0, $2, $t0
			addu	$t0, $3, $t0
			addu	$t0, $4, $t0
			addu	$t0, $5, $t0
			addu	$t0, $6, $t0
			addu	$t0, $7, $t0
			addu	$t0, $8, $t0
			addu	$t0, $9, $t0
			addu	$t0, $10, $t0
			addu	$t0, $11, $t0
			addu	$t0, $12, $t0
			addu	$t0, $13, $t0
			addu	$t0, $14, $t0
			addu	$t0, $15, $t0
			addu	$t0, $16, $t0
			addu	$t0, $17, $t0
			addu	$t0, $18, $t0
			addu	$t0, $19, $t0
			addu	$t0, $20, $t0
			addu	$t0, $21, $t0
			addu	$t0, $22, $t0
			addu	$t0, $23, $t0
			addu	$t0, $24, $t0
			addu	$t0, $25, $t0
			addu	$t0, $26, $t0
			addu	$t0, $27, $t0
			addu	$t0, $28, $t0
			addu	$t0, $29, $t0
			addu	$t0, $30, $t0
			addu	$t0, $31, $t0

			divu	$t0, $a0
			mfhi	$v0

			lw		$ra, 0($sp)
			addi	$sp, $sp, 4
			jr		$ra


#################################################################
#																#
#	Nivel_dificultad: recibe en $a3 la dificultad seleccionada  #
#		y a raiz de ahi modifica el sudokuini                   #
#                                                               #
#################################################################

nivel_dificultad:

			addi	$sp, $sp, -16			# Apila
			sw		$ra, 0($sp)
			sw		$a0, 4($sp)

			li		$t0, 1
			li		$t1, 2
			li		$t2, 3

			beq		$a3, $t0,facil
			beq		$a3, $t1,medio
			beq		$a3, $t2,dificil

			li		$t5, 0
			sb		$t5, aux

facil:		li		$t4, 8
			sb		$t4, aux2
			sb		$t4, vacias
			sb		$t4, vacias2
			j		avance
medio:		li		$t4, 12
			sb		$t4, aux2
			sb		$t4, vacias
			sb		$t4, vacias2
			j		avance
dificil:	li		$t4, 18
			sb		$t4, aux2
			sb		$t4, vacias
			sb		$t4, vacias2
avance:

			li		$a0, 8					# Numero maximo aleatorio

			jal aleatorio

			sw		$v0, 8($sp)

			li		$a0, 8					# Numero maximo aleatorio

			jal aleatorio

			sw		$v0, 12($sp)

			lb		$a1, 12($sp)			# Fila
			lb		$a2, 8($sp)				# Columna
			la		$a0, sudokuini2

			jal		obten_celda

			beq		$v0, 0, avance			#con esto conseguimos que no se repitan las posiciones

			la		$a0, sudokuini2			# Carga el tablero
			lb		$a1, 12($sp)			# Fila
			lb		$a2, 8($sp)				# Columna
			li		$a3, 0					# ponemos un cero en la posicion ya que estamos creando un sudoku inicial a partir del solucion

			jal		cambia_celda

			lb		$t5, aux
			addi	$t5, $t5, 1
			sb		$t5, aux
			lb		$t4, aux2
			blt		$t5, $t4, avance

			lw		$a0, 4($sp)
			lw		$ra, 0($sp)
			addi	$sp, $sp, 12
			jr		$ra

polling_menu:
	addi	$sp, $sp, -24 			# Apilamos
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$t0, 16($sp)
	sw 	$t1, 20($sp)

lectura_menu: 							# Lectura de digito 1
	lb 		$s0,0xffff0000			# Carga registro Receptor de Control
	andi 	$s1,$s0,0x00000001		# �Hay algo?
	beqz 	$s1,lectura_menu			# Si a�n no, bucle de espera activa
	lb 		$s2,0xffff0004			# Lee car�cter del Receptor de Datos

	li	$t0, 48						# Cargamos un "0"
	blt	$s2, $t0, lectura_menu			# Si < 0 vuelva a permanecer en espera
	li	$t0, 57						# Cargamos un "9"
	bgt	$s2, $t0, lectura_menu			#  Si > 9 vuelva a permanecer en espera

	sb		$s2,0xffff000c			# Imprimimos el caracter en pantalla

guarda_menu:
	lb 		$s0,0xffff0008			# Carga registro Transmisor de control
	andi 	$s1,$s0,0x00000001		# �Ha terminado de imprimirse?
	beqz 	$s1,guarda_menu			# Mientras no, bucle de espera activa
	addi	$t2, $s2, -48			# Convertimos el car�cter del primer d�gito a hexadecimal

	move	$v0, $t2

	lw 	$ra, 0($sp)					# Desapilamos
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$t0, 16($sp)
	lw 	$t1, 20 ($sp)
	addi 	$sp, $sp, 24

	jr 	$ra

polling_celda:
	addi	$sp, $sp, -24 			# Apilamos
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$t0, 16($sp)
	sw 	$t1, 20($sp)

lectura_1: 							# Lectura de digito 1
	lb 		$s0,0xffff0000			# Carga registro Receptor de Control
	andi 	$s1,$s0,0x00000001		# �Hay algo?
	beqz 	$s1,lectura_1			# Si a�n no, bucle de espera activa
	lb 		$s2,0xffff0004			# Lee car�cter del Receptor de Datos

	li	$t0, 48						# Cargamos un "0"
	blt	$s2, $t0, lectura_1			# Si < 0 vuelva a permanecer en espera
	li	$t0, 56						# Cargamos un "8"
	bgt	$s2, $t0, lectura_1			#  Si > 8 vuelva a permanecer en espera

	sb		$s2,0xffff000c			# Imprimimos el caracter en pantalla

guarda_1:
	lb 		$s0,0xffff0008			# Carga registro Transmisor de control
	andi 	$s1,$s0,0x00000001		# �Ha terminado de imprimirse?
	beqz 	$s1,guarda_1			# Mientras no, bucle de espera activa
	addi	$t2, $s2, -48			# Convertimos el car�cter del primer d�gito a hexadecimal

	move	$v0, $t2

	lw 	$ra, 0($sp)					# Desapilamos
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$t0, 16($sp)
	lw 	$t1, 20 ($sp)
	addi 	$sp, $sp, 24

	jr 	$ra

polling_dificultad:
	addi	$sp, $sp, -24 			# Apilamos
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$t0, 16($sp)
	sw 	$t1, 20($sp)

lectura_2: 							# Lectura de digito 1
	lb 		$s0,0xffff0000			# Carga registro Receptor de Control
	andi 	$s1,$s0,0x00000001		# �Hay algo?
	beqz 	$s1,lectura_2			# Si a�n no, bucle de espera activa
	lb 		$s2,0xffff0004			# Lee car�cter del Receptor de Datos

	li	$t0, 49						# Cargamos un "1"
	blt	$s2, $t0, lectura_2			# Si < 1 vuelva a permanecer en espera
	li	$t0, 51						# Cargamos un "3"
	bgt	$s2, $t0, lectura_2			#  Si > 3 vuelva a permanecer en espera

	sb		$s2,0xffff000c			# Imprimimos el caracter en pantalla

guarda_2:
	lb 		$s0,0xffff0008			# Carga registro Transmisor de control
	andi 	$s1,$s0,0x00000001		# �Ha terminado de imprimirse?
	beqz 	$s1,guarda_2			# Mientras no, bucle de espera activa
	addi	$t2, $s2, -48			# Convertimos el car�cter del primer d�gito a hexadecimal

	move	$v0, $t2

	lw 	$ra, 0($sp)					# Desapilamos
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$t0, 16($sp)
	lw 	$t1, 20 ($sp)
	addi 	$sp, $sp, 24

	jr 	$ra

polling_suge:
	addi	$sp, $sp, -24 			# Apilamos
	sw 	$ra, 0($sp)
	sw 	$s0, 4($sp)
	sw 	$s1, 8($sp)
	sw 	$s2, 12($sp)
	sw 	$t0, 16($sp)
	sw 	$t1, 20($sp)

lectura_suge: 							# Lectura de digito 1
	lb 		$s0,0xffff0000			# Carga registro Receptor de Control
	andi 	$s1,$s0,0x00000001		# �Hay algo?
	beqz 	$s1,lectura_suge			# Si a�n no, bucle de espera activa
	lb 		$s2,0xffff0004			# Lee car�cter del Receptor de Datos

	li	$t0, 49						# Cargamos un "1"
	blt	$s2, $t0, lectura_suge			# Si < 1 vuelva a permanecer en espera
	li	$t0, 50						# Cargamos un "2"
	bgt	$s2, $t0, lectura_suge			#  Si > 2 vuelva a permanecer en espera

	sb		$s2,0xffff000c			# Imprimimos el caracter en pantalla

guarda_suge:
	lb 		$s0,0xffff0008			# Carga registro Transmisor de control
	andi 	$s1,$s0,0x00000001		# �Ha terminado de imprimirse?
	beqz 	$s1,guarda_suge			# Mientras no, bucle de espera activa
	addi	$t2, $s2, -48			# Convertimos el car�cter del primer d�gito a hexadecimal

	move	$v0, $t2

	lw 	$ra, 0($sp)					# Desapilamos
	lw 	$s0, 4($sp)
	lw 	$s1, 8($sp)
	lw 	$s2, 12($sp)
	lw 	$t0, 16($sp)
	lw 	$t1, 20 ($sp)
	addi 	$sp, $sp, 24

	jr 	$ra
