#!/bin/bash

clear

ACTUAL_PATH=`pwd`
#echo $ACUTAL_PATH

ROUNDS_WON=0

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

SELECT_LEVEL() {
	
	echo -e ""$RED"How many letters do you want in your word"
	echo -e "---------------------------------------------"$NC""
	echo "         3, (3 Letters, easy level)"
	echo "         4, (4 Letters, less easy level)"
	echo "         5, (5 Letters, normal wordle)"
	echo "         6, (6 Letters hard level)"
	echo -e ""$RED"---------------------------------------------"
	
	echo -e "Enter the level that you want: "$NC"" 
	read LEVEL

	while [[ $LEVEL != 3 && $LEVEL != 4 && $LEVEL != 5 && $LEVEL != 6 ]]
	do
		echo "Number not valid: $LEVEL. Enter a number valid (3, 4, 5 o 6)."
		read LEVEL
	done
}


SELECT_WORD() {

	if [ $LEVEL -eq 3 ];then
		WORD=`bash query3.sh`
		TRIES=5

	elif [ $LEVEL -eq 4 ];then
    	WORD=`bash query4.sh`
		TRIES=6

	elif [ $LEVEL -eq 5 ];then
    	WORD=`bash query5.sh`
		TRIES=6

	elif [ $LEVEL -eq 6 ];then
    	WORD=`bash query6.sh`
		TRIES=7
	fi


	echo "$WORD" #CHEATMODE
}


GAME() {

	while [ $TRIES -gt 0 ]
	do
    
		echo "" && echo "Numbers of tries that you have: $TRIES"
		read -p "Enter your guess: " ANSWER 
		
		ANSWER=`echo $ANSWER | tr '[:upper]' '[:lower]'`

		if [ ${#ANSWER} -ne ${#WORD} ]; then
			echo "The guess has to have exactacly ${#WORD} letters."
           	continue
        fi

		if [ $ANSWER == $WORD ];then
			LETTER_COLOUR
			WIN='true'
			break
		fi
		
		LETTER_COLOUR

		TRIES=$((TRIES - 1))
    done

	if [ $TRIES -eq 0 ];then
		echo "You have used all your attempts and the word was: $WORD"
		WON='false'
	else
		echo "You haved guessed the word correctly: $WORD "
		ROUNDS_WON=$((ROUNDS_WON + 1))
		echo ""
		echo ""
	fi
}

REPEAT() {

	if [ $WON = 'false' ];then
		echo "You haved lost, but do you want to try again?"
		echo ":You had this many games won: $ROUNDS_WON"
		read -p "Yes o No?: Answer: " REPEAT
		echo ""
	elif [ $WON = 'true' ];then
			echo "Bravo you have this many games won: $ROUNDS_WON"
		echo "Want to play again"
		read -p "Yes o No?: Answer: " REPEAT
		echo ""
	fi

	if [[ $REPEAT == "Yes" || $REPEAT == "yes" || $REPEAT == "YES" ]];then
		read -p "Do you want the same level of letters? yes o No: " SAME_LEVEL
		echo ""

		if [[ $SAME_LEVEL == "YES" || $SAME_LEVEL == "yes" || $SAME_LEVEL == "Yes" ]];then
			
			SELECT_WORD
			GAME
			REPEAT

		elif [[ $SAME_LEVEL == "no" || $SAME_LEVEL == "No" || $SAME_LEVEL == "NO" ]]; then
			SELECT_LEVEL
			SELECT_WORD
            GAME
			REPEAT
			
		else 
			exit 0
		fi
	else
		echo -e ""$GREEN"Thanks for playing wordle!"$NC""
		exit 0
	fi

	
}
LETTER_COLOUR() {

	for (( i=0; i<${#ANSWER}; i++ )); do
    	LETTER="${ANSWER:$i:1}"
        LETTER_SECRETA="${WORD:$i:1}"
        if [ "${LETTER}" == "${LETTER_SECRETA}" ]; then
        	echo -e "\e[32m${LETTER}\e[0m"  # Letra en verde si está en la posición correcta
        elif [[ "${WORD}" == *"${LETTER}"* ]]; then
            echo -e "\e[33m${LETTER}\e[0m"  # Letra en naranja si está en la palabra pero no en la posición correcta
        else
            echo "${LETTER}"  # Letra normal si no está en la palabra
        fi
	done

}



SELECT_LEVEL
SELECT_WORD
GAME
REPEAT
