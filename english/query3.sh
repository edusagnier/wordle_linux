#!/bin/bash

result=`mysql -u enti -penti -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;" | grep -v 'word3'`
echo $result
