#!/bin/bash

echo "==================================================================================="
echo "      Select language to play Wordle / Seleciona idioma para jugar al Wordle       "
echo "==================================================================================="

read -p "Play in English (EN) / Jugar en Español (ES): " IDIOMA

if [[ $IDIOMA == "EN" || $IDIOMA == "en" || $IDIOMA == "En" || $IDIOMA == "eN" ]];then
	cd english/
	/wordle_game_english.sh


elif [[ $IDIOMA == "ES" || $IDIOMA == "es" || $IDIOMA == "Es" || $IDIOMA == "eS" ]];then
	cd spanish/
	./wordle_game_spanish.sh

else
	exit 1

fi

