#!/bin/bash

USER=`cat ../credentials.txt | head -n 1`
PASSWORD=`cat ../credentials.txt | tail -n 1`

result=`mysql -u "$USER" -p"$PASSWORD" -e "SELECT word6 FROM wordle_english.words6 ORDER BY RAND() LIMIT 1;" | grep -v 'word6'`
echo $result
