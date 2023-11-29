#!/bin/bash

result=`mysql -u enti -penti -e "SELECT word6 FROM wordle_english.words6 ORDER BY RAND() LIMIT 1;" | grep -v 'word6'`
echo $result
