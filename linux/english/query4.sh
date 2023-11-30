#!/bin/bash

result=`mysql -u enti -penti -e "SELECT word4 FROM wordle_english.words4 ORDER BY RAND() LIMIT 1;" | grep -v 'word4'`
echo $result
