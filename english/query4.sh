#!/bin/bash

resultado=`mysql -u user -ppassword -e "SELECT palabra4 FROM wordle.palabras4 ORDER BY RAND() LIMIT 1;" | grep -v 'palabra4'`
echo $resultado
