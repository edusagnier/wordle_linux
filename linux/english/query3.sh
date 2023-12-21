#!/bin/bash

USER=`cat ../credentials.txt | head -n 1`
PASSWORD=`cat ../credentials.txt | tail -n 1`

result=`mysql -u "$USER" -p"$PASSWORD" -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;" | grep -v 'word3'`
echo $result
