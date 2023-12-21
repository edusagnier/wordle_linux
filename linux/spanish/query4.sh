#!/bin/bash

USER=`cat ../credentials.txt | head -n 1`
PASSWORD=`cat ../credentials.txt | tail -n 1`


resultado=`mysql -u "$USER" -p"$PASSWORD" -e "SELECT palabra4 FROM wordle.palabras4 ORDER BY RAND() LIMIT 1;" | grep -v 'palabra4'`
echo $resultado
