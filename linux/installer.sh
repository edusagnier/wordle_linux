#!/bin/bash

echo "Installer of Wordle Game"

CURRENT_PATH=`pwd`

PATH_INGLISH_DB="$CURRENT_PATH/english/wordle_database_english.sql"
PATH_SPANISH_DB="$CURRENT_PATH/spanish/wordle_database_spanish.sql"

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

				sudo apt update
				sudo apt install default-mysql-server
				sudo systemctl start mysql
    				sleep 2
				clear

				cat "$PATH_INGLISH_DB" | mysql
				cat "$PATH_SPANISH_DB" | mysql
				
				echo "Now we are going to insert User & Password for the database, it doesn't need to be very complicated"
				read -p "Insert a username for the Database user: " username
				read -p "Insert a password for the Database user: " password

				echo $username > credentials.txt
				echo $password >> credentials.txt
				echo "Saved on credentials.txt"

				echo "CREATE USER '"$username"'@'localhost' IDENTIFIED BY '"$password"';" | mysql
				echo "MySQL user created" && echo "SELECT user, host FROM mysql.user;" | mysql

#				echo "DROP USER '"$username"'@'localhost'" | mysql
#				echo MySQL user deleted && echo "SELECT user, host FROM mysql.user;" | mysql

				echo "GRANT ALL PRIVILEGES ON wordle.* TO '"$username"'@'localhost';" | mysql
				echo "GRANT ALL PRIVILEGES ON wordle_english.* TO '"$username"'@'localhost';" | mysql
				echo "Privileges on your user given on databases"
				sleep 5
				clear
				read -p "Want to play now? (yes o no) " answer
				ANSWER=`echo $answer | tr '[:upper:]' '[:lower:]'`

				if [ "$ANSWER" == "yes" ];then
					./wordle_game.sh
				fi
				exit 0
			fi
    	else
        	echo "Unable to determine the distribution."
    	fi
	else
    	echo "File /etc/os-release not found. Unable to determine the distribution."
	fi
else
	echo "Not login as root"
fi


