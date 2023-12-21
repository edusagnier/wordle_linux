#!/bin/bash

echo "==================================================================================="
echo "      Select language to play Wordle / Seleciona idioma para jugar al Wordle       "
echo "==================================================================================="

read -p "Play in English (EN) / Jugar en Español (ES): " IDIOMA

IDIOMA=`echo "$IDIOMA" |  tr '[:upper:]' '[:lower:]'`

if [ $IDIOMA == "en" ];then
	cd english/
	./wordle_game_english.sh


elif [ $IDIOMA == "es" ];then
	cd spanish/
	./wordle_game_spanish.sh

else
	exit 1

fi

