#!/bin/bash

resultado=`mysql -u user -ppassword -e "SELECT palabra3 FROM wordle.palabras3 ORDER BY RAND() LIMIT 1;" | grep -v 'palabra3'`
echo $resultado
