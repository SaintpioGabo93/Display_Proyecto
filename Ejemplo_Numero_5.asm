; CONFIGURACIÓN
 __CONFIG _INTRC_OSC_NOCLKOUT & _WDTE_OFF & _PWRTE_ON & _MCLRE_OFF & _BOREN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF

    LIST P=16F628A
    #include <p16f628a.inc> 
    
; Ejemplo simple para escribir un numero en una pantallita LED
    
    ; Iniciamos el programa
    org		0x00
    bsf		STATUS, 5
    clrf	TRISB
    bcf		STATUS, 5
    
; Programa para poner los numeros
    movlw	b'01101101'	; Cargamos los bits de los leds que vamos a encender
    movwf	PORTB		; Guradamos los bits en el PORTB para la salida
fin:
    goto fin
    
    end