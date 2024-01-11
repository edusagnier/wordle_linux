#!/bin/bash

echo "Installer of Wordle Game"

CURRENT_PATH=`pwd`


#echo "$PATH_INGLISH_DB"
#echo "$PATH_SPANISH_DB"


USERID=`id -u`

if [ $USERID == 0 ];then
	if [ -f /etc/os-release ]; then
	   	source /etc/os-release

    	if [ -n "$PRETTY_NAME" ]; then
        	
			echo "Distribution: $PRETTY_NAME"
			DISTR=`echo $PRETTY_NAME | awk '{print $1}' | tr '[:upper:]' '[:lower:]'`

			if [[ "$DISTR" == "debian" || "$DISTR" == "ubuntu" || "$DISTR" == "kali" || "$DISTR" == "deepin" ]];then
				
				echo "DROP DATABASE IF EXISTS wordle" | mysql
				echo "DROP DATABASE IF EXISTS wordle_english" | mysql
				
				sleep 2
				clear

				username=`cat credentials.txt | head -n 1`
				
				echo "DROP USER '"$username"'@'localhost'"  | mysql
				echo "MySQL user Deleted" && echo "SELECT user, host FROM mysql.user;" | mysql
				
				sleep 3
#				echo "DROP USER '"$username"'@'localhost'" | mysql
#				echo MySQL user deleted && echo "SELECT user, host FROM mysql.user;" | mysql

				clear
				apt remove default-mysql-server -y
    			
	
				exit 0

			elif [[ "$DISTR" == "fedora" || "$DISTR" == "centos" || "$DISTR" == "rocky" ]];then
       				
				echo "DROP DATABASE IF EXISTS wordle" | mysql
				echo "DROP DATABASE IF EXISTS wordle_english" | mysql
				
				sleep 2
				clear

				username=`cat credentials.txt | head -n 1`
				
				echo "DROP USER '"$username"'@'localhost'"  | mysql
				echo "MySQL user Deleted" && echo "SELECT user, host FROM mysql.user;" | mysql
				
				sleep 3
#				echo "DROP USER '"$username"'@'localhost'" | mysql
#				echo MySQL user deleted && echo "SELECT user, host FROM mysql.user;" | mysql

				clear
				dnf remove default-mysql-server -y


				exit 0
			
    	else
        	echo "Unable to determine the distribution."
    	fi
	else
    	echo "File /etc/os-release not found. Unable to determine the distribution."
	fi
else
	echo "Not login as root"
fi


