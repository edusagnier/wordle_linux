#!/bin/bash

result=`mysql -u enti -penti -e "SELECT word5 FROM wordle_english.words5 ORDER BY RAND() LIMIT 1;" | grep -v 'word5'`
echo $result
