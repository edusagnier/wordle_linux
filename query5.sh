#!/bin/bash

resultado=`mysql -u user -ppassword -e "SELECT palabra5 FROM wordle.palabras5 ORDER BY RAND() LIMIT 1;" | grep -v 'palabra5'`
echo $resultado
