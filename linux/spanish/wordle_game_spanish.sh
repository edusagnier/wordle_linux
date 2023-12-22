#!/bin/bash

clear

ACTUAL_PATH=`pwd`
#echo $ACTUAL_PATH

RONDAS_GANADAS=0

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e ""$RED"============================================="
echo -e ""$RED"============================================="
echo -e ""$YELLOW"                  WORDLE                     "
echo -e ""$RED"============================================="
echo -e ""$RED"============================================="
echo -e ""$BLUE"Created by:"
echo -e ""$BLUE"  @edusagnier$NC"
echo ""

SELECIONAR_NIVEL() {
	echo -e ""$RED"Con cuantas LETRAs quieres quieres la palabra"
	echo -e "---------------------------------------------"$NC""
	echo "         3, (3 Letras, easy level)"
	echo "         4, (4 Letras, less easy level)"
	echo "         5, (5 Letras, normal wordle)"
	echo "         6, (6 Letras hard level)"
	echo -e ""$RED"---------------------------------------------"

	echo -e "Ingresa el nivel que quieres: "$NC"" 
	read LEVEL

	while [[ $LEVEL != 3 && $LEVEL != 4 && $LEVEL != 5 && $LEVEL != 6 ]]
	do
		echo "Número no válido: $LEVEL. Ingresa un número válido (3, 4, 5 o 6)."
		read LEVEL
	done
}

ELIGIR_PALABRA() {

	if [ $LEVEL -eq 3 ];then
		PALABRA=`bash query3.sh`
		INTENTOS=5

	elif [ $LEVEL -eq 4 ];then
    	PALABRA=`bash query4.sh`
		INTENTOS=6

	elif [ $LEVEL -eq 5 ];then
    	PALABRA=`bash query5.sh`
		INTENTOS=6

	elif [ $LEVEL -eq 6 ];then
    	PALABRA=`bash query6.sh`
		INTENTOS=7
	fi

	echo "$PALABRA" #CHEATMODE

}

JUEGO() {
    
	while [ $INTENTOS -gt 0 ]
	do
    	echo "" && echo "Numeros de intentos que tienes: $INTENTOS"
		read -p "Ingresa tu RESPUESTA: " RESPUESTA 
		RESPUESTA=`echo $RESPUESTA | tr '[:upper:]' '[:lower:]'`
		
        if [ ${#RESPUESTA} -ne ${#PALABRA} ]; then
            echo "El intento debe tener exactamente ${#PALABRA} LETRAS."
            continue
        fi

		if [ "$RESPUESTA" == "$PALABRA" ];then
			COLOREAR_LETRA
			GANADO='true'
			break
		fi

		COLOREAR_LETRA		
		
		INTENTOS=$((INTENTOS - 1))
		echo "Intentos restantes: $INTENTOS"

    done

	if [ $INTENTOS -eq 0 ];then
		echo "Se han gastado tus intentos i la palabra era: $PALABRA"
		GANADO='false'
	else
		echo "Has accertado la palabra secreta: $PALABRA " 
		PARTIDAS_GANADAS=$((PARTIDAS_GANADAS + 1))
		echo ""
		echo ""
	fi
}

REPETIR() {
	if [ $GANADO = 'false' ];then
		echo "Has perdido, pero quieres volver a repetir?"
		echo "Llevabas estas partidas ganadas: $PARTIDAS_GANADAS"
		read -p "Si o No? : Respuesta: " REPETIR
		echo ""
	elif [ $GANADO = 'true' ];then
		echo "Bravo llevas estas partidas ganadas: $PARTIDAS_GANADAS"
		echo "Quires repetir"
		read -p "Si o No? : Respuesta: " REPETIR
		echo ""
	fi

	if [[ $REPETIR == "si" || $REPETIR == "Si" || $REPETIR == "SI" ]];then
		read -p "Quieres el mismo nivel de palabras? Si o No: " SAME_LEVEL
		echo ""

		if [[ $SAME_LEVEL == "si" || $SAME_LEVEL == "Si" || $SAME_LEVEL == "SI" ]];then
			
			ELIGIR_PALABRA
			JUEGO
			REPETIR

		elif [[ $SAME_LEVEL == "no" || $SAME_LEVEL == "No" || $SAME_LEVEL == "NO" ]]; then
			SELECIONAR_NIVEL
			ELIGIR_PALABRA
            JUEGO
			REPETIR
			
		else 
			exit 0
		fi
	else
		echo -e ""$GREEN"Gracias por jugar a wordle!"$NC""
		exit 0
	fi

	
}

COLOREAR_LETRA() {
    for (( i=0; i<${#RESPUESTA}; i++ )); do
        LETRA="${RESPUESTA:$i:1}"
        LETRA_SECRETA="${PALABRA:$i:1}"
        if [ "${LETRA}" == "${LETRA_SECRETA}" ]; then
            echo -e "\e[32m${LETRA}\e[0m"  # Letra en verde si está en la posición correcta
        elif [[ "${PALABRA}" == *"${LETRA}"* ]]; then
            echo -e "\e[33m${LETRA}\e[0m"  # Letra en naranja si está en la palabra pero no en la posición correcta
        else
            echo "${LETRA}"  # Letra normal si no está en la palabra
        fi
    done
}

SELECIONAR_NIVEL
ELIGIR_PALABRA
JUEGO
REPETIR
