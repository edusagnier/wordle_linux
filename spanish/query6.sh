#!/bin/bash

resultado=`mysql -u enti -penti -e "SELECT palabra6 FROM wordle.palabras6 ORDER BY RAND() LIMIT 1;" | grep -v 'palabra6'`
echo $resultado
