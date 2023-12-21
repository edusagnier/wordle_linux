#!/bin/bash

USER=`cat ../credentials.txt | head -n 1`
PASSWORD=`cat ../credentials.txt | tail -n 1`


resultado=`mysql -u "$USER" -p"$PASSWORD" -e "SELECT palabra5 FROM wordle.palabras5 ORDER BY RAND() LIMIT 1;" | grep -v 'palabra5'`
echo $resultado
