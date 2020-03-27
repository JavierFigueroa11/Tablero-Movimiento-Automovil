;------------
;Definiciones
;------------




;-------------------------------------
.ORG 100H     ; Directiva del Programa
;-------------------------------------
;-------------
;Declaraciones
;-------------



;Examen Final Practico De Microprocesadores;

;========================Enciendo el display y muestro encender. 
MVI A,01111001b
OUT 0FH
MVI A,00110111b
OUT 0EH
MVI A,00111001b
OUT 0DH
MVI A,01111001b
OUT 0CH
MVI A,00110111b
OUT 0BH
MVI A,00111111b
OUT 0AH
MVI A,01111001b
OUT 09H
MVI A,00110001b
OUT 08H
;========================Dejo encendido el display un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Elimino el display
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0BH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================Muestro el nivel del tanque.
MVI A,11111111b
OUT 00H
MVI A,11000001b
OUT 01H
MVI A,11100001b
OUT 02H
MVI A,11110001b
OUT 03H
MVI A,11111001b
OUT 04H
MVI A,11111101b
OUT 05H
MVI A,11111111b
OUT 06H
MVI A,11111111b
OUT 07H
;=======================El display dice el nivel del tanque
MVI A,00110000b
OUT 0FH
MVI A,01010010b
OUT 0EH
MVI A,01011011b
OUT 0DH
MVI A,00110111b
OUT 0CH
MVI A,00110000b
OUT 0BH
MVI A,00111110b
OUT 0AH
MVI A,01111001b
OUT 09H
MVI A,00111000b
OUT 08H
;========================Dejo el display con el nivel del tanque por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Elimino el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0BH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;=========================
MVI A,01111101b
OUT 0EH
MVI A,01110111b
OUT 0DH
MVI A,01101101b
OUT 0CH
MVI A,00111111b
OUT 0BH
MVI A,00110000b
OUT 0AH
MVI A,00111000b
OUT 09H
;=======================Elimino el display.
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0BH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
;=======================Elimino la matriz.
MVI A,00000000b
OUT 00H
OUT 01H
OUT 02H
OUT 03H
OUT 04H
OUT 05H
OUT 06H
OUT 07H

;========================Al mismo tiempo enciendo muestro la N(Punto muerto)
MVI A,00000000b
OUT 0
MVI A,01000010b
OUT 1
MVI A,01100010b
OUT 2
MVI A,01010010b
OUT 3
MVI A,01001010b
OUT 4
MVI A,01000110b
OUT 5
MVI A,01000010b
OUT 6
MVI A,00000000b
OUT 7
;========================Al mismo tiempo que enciendo,esta detenida la rueda.
MVI A,11111111b    
      OUT 10h

        RRC 
									OUT 10h
;========================
MVI A,00000110b
OUT 0FH
MVI A,00111111b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H

;========================dejo la matriz led por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Dejo la pantalla con la palabra encender un tiempo en el display..
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Limpio la pantalla,elimino encender del display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0BH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;=========================Dejo el display en negro
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;==========================Limpio la matriz de leds.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
MVI A,00000000b
OUT 7
;========================Enciendo la matriz de leds y muestro R.
MVI A,00000000b
OUT 0
MVI A,00111000b
OUT 1
MVI A,00100100b
OUT 2
MVI A,00101000b
OUT 3
MVI A,00110000b
OUT 4
MVI A,00101000b
OUT 5
MVI A,00100100b
OUT 6
MVI A,00000000b
OUT 7
;========================Empiezo a girar la rueda en sentido antihorario(Reversa).
MVI A,10001000b    
      OUT 10h

        RLC 
									OUT 10h
;========================Muestro en el display las revoluciones del motor.
MVI A,00000110b
OUT 0FH
MVI A,00000110b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H


;========================Sigue girando la rueda en sentido antihorario(Reversa).
MVI A,00010001b    
      OUT 10h

        RLC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,00000110b
OUT 0FH
MVI A,01101101b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP
NOP
NOP
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================Sigue girando la rueda en sentido antihorario(Reversa).
MVI A,00100010b    
      OUT 10h

        RLC 
									OUT 10h


;========================Muestro en el display las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,00111111b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================Llega al punto inicial.
MVI A,01000100b    
      OUT 10h

        RLC 
									OUT 10h
;========================
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================se detiene.
MVI A,11111111b    
      OUT 10h

        RRC 
									OUT 10h

;=======================dejo un tiempo el motor encendido
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Dejo un tiempo a que se muestre la R.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Elimino los leds de la matriz.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
MVI A,00000000b
OUT 7
;=========================Dejo un tiempo en apagada la matriz.
NOP 
NOP 
NOP 
NOP  
NOP 
NOP 
NOP 
NOP 
;=========================Fin Reversa(R).
;=========================Se detiene la rueda para pasar al siguiente cambio.
MVI A,11111111b    
      OUT 10h

        RRC 
									OUT 10h
;=========================Dejo la rueda detenida por un tiempo
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Enciendo la matriz de led y muestro 1.
MVI A,00000000b
OUT 0
MVI A,00001000b
OUT 1
MVI A,00011000b
OUT 2
MVI A,00101000b
OUT 3
MVI A,00001000b
OUT 4
MVI A,00001000b
OUT 5
MVI A,00001000b
OUT 6
;========================Empiezo a girar la rueda en sentido horario.
MVI A,10001000b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,00000110b
OUT 0FH
MVI A,00000110b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
;========================Sigue girando la rueda en sentido horario.
MVI A,01000100b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,00000110b
OUT 0FH
MVI A,01111101b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP
NOP
NOP
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================

MVI A,00100010b    
      OUT 10h

        RRC 
									OUT 10h


;========================Muestro en el display las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,00000111b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
MVI A,00010001b    
      OUT 10h

        RRC 
									OUT 10h

        


;========================Dejo la matriz con endendida por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Elimino los leds encendidos de la matriz.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
;========================Dejo apagado la matriz por un tiempo
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Fin Primera(1º)

MVI A,00000000b
OUT 0
MVI A,00111000b
OUT 1
MVI A,01000100b
OUT 2
MVI A,00001000b
OUT 3
MVI A,00010000b
OUT 4
MVI A,00100000b
OUT 5
MVI A,01111100b
OUT 6
;========================Empieza a girar la rueda en sentido horario.
MVI A,10001000b    
      OUT 10h

        RRC 
									OUT 10h

;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,00000110b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================

;========================

MVI A,01000100b    
      OUT 10h

        RRC 
									OUT 10h

;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,01111101b
OUT 0EH
MVI A,01101101b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;=========================
;==================================
MVI A,00100010b    
      OUT 10h

        RRC 
									OUT 10h


;========================Muestro en el display las revoluciones del motor.
MVI A,01001111b
OUT 0FH
MVI A,00000110b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
MVI A,00010001b    
      OUT 10h

        RRC 
									OUT 10h

        


;========================Dejo la matriz con endendida por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Elimino los leds encendidos de la matriz.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
;========================Dejo apagado la matriz por un tiempo
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Fin Segunda(2º)
;========================Enciendo la matriz de led y muestro 3.
MVI A,00000000b
OUT 0
MVI A,00111000b
OUT 1
MVI A,00000100b
OUT 2
MVI A,00011100b
OUT 3
MVI A,00000100b
OUT 4
MVI A,00000100b
OUT 5
MVI A,00111000b
OUT 6

;========================Empiezo a girar la rueda en sentido horario.
MVI A,10001000b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,00000110b
OUT 0EH
MVI A,01101101b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
;========================Sigue girando la rueda en sentido horario.
MVI A,01000100b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,01101101b
OUT 0EH
MVI A,01101101b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP
NOP
NOP
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================

MVI A,00100010b    
      OUT 10h

        RRC 
									OUT 10h


;========================Muestro en el display las revoluciones del motor.
MVI A,01001111b
OUT 0FH
MVI A,00111111b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
MVI A,00010001b    
      OUT 10h

        RRC 
									OUT 10h

        


;========================Dejo la matriz con endendida por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Elimino los leds encendidos de la matriz.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
;========================Dejo apagado la matriz por un tiempo
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Fin Tercera(3º)

;========================Enciendo la matriz de led y muestro 4.
MVI A,00000000b
OUT 0
MVI A,00001000b
OUT 1
MVI A,00011000b
OUT 2
MVI A,00101000b
OUT 3
MVI A,01111100b
OUT 4
MVI A,00001000b
OUT 5
MVI A,00001000b
OUT 6
;========================Empiezo a girar la rueda en sentido horario.
MVI A,10001000b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,01011011b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
;========================Sigue girando la rueda en sentido horario.
MVI A,01000100b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,01101101b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP
NOP
NOP
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================

MVI A,00100010b    
      OUT 10h

        RRC 
									OUT 10h


;========================Muestro en el display las revoluciones del motor.
MVI A,01001111b
OUT 0FH
MVI A,00000110b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
MVI A,00010001b    
      OUT 10h

        RRC 
									OUT 10h

        


;========================Dejo la matriz con endendida por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Elimino los leds encendidos de la matriz.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
;========================Dejo apagado la matriz por un tiempo
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Fin Cuarta(4º)
;========================Enciendo la matriz de led y muestro 5.
MVI A,00000000b
OUT 0
MVI A,00111100b
OUT 1
MVI A,00100000b
OUT 2
MVI A,00111100b
OUT 3
MVI A,00000100b
OUT 4
MVI A,00000100b
OUT 5
MVI A,00111100b
OUT 6
;========================Empiezo a girar la rueda en sentido horario.
MVI A,10001000b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,01001111b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
;========================Sigue girando la rueda en sentido horario.
MVI A,01000100b    
      OUT 10h

        RRC 
									OUT 10h
;========================Muestro el display con las revoluciones del motor.
MVI A,01011011b
OUT 0FH
MVI A,01100111b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP
NOP
NOP
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================

MVI A,00100010b    
      OUT 10h

        RRC 
									OUT 10h


;========================Muestro en el display las revoluciones del motor.
MVI A,01001111b
OUT 0FH
MVI A,01100110b
OUT 0EH
MVI A,00111111b
OUT 0DH
MVI A,00111111b
OUT 0CH
MVI A,10110001b
OUT 0AH
MVI A,11110011b
OUT 09H
MVI A,00010101b
OUT 08H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0FH
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H
MVI A,00000000b
OUT 08H
;========================
MVI A,00010001b    
      OUT 10h

        RRC 
									OUT 10h

        


;========================Dejo la matriz con endendida por un tiempo.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Elimino los leds encendidos de la matriz.
MVI A,00000000b
OUT 0
MVI A,00000000b
OUT 1
MVI A,00000000b
OUT 2
MVI A,00000000b
OUT 3
MVI A,00000000b
OUT 4
MVI A,00000000b
OUT 5
MVI A,00000000b
OUT 6
;========================Dejo apagado la matriz por un tiempo
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;=========================Fin Quinta(5º)
;=========================Se frena la rueda
MVI A,11111111b    
      OUT 10h

        RRC 
									OUT 10h
;==========================Se apaga
MVI A,01110111b
OUT 0EH
MVI A,01110011b
OUT 0DH
MVI A,01110111b
OUT 0CH
MVI A,01111101b
OUT 0BH
MVI A,01110111b
OUT 0AH
MVI A,00110001b
OUT 09H
;========================Dejo el display con las revoluciones.
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
NOP 
;========================Borro el display.
MVI A,00000000b
OUT 0EH
MVI A,00000000b
OUT 0DH
MVI A,00000000b
OUT 0CH
MVI A,00000000b
OUT 0BH
MVI A,00000000b
OUT 0AH
MVI A,00000000b
OUT 09H



HLT ;=====================Se detiene el procesador








;=========================
.END      ; Fin del Codigo

