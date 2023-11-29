# Wordle on bash
### A wordle game with mysql server and bash script.
#
#

## Installing MySQL on Linux

This repository contains instructions for installing MySQL on different distributions of Linux. Follow the steps corresponding to your distribution to complete the installation.

### Distribution 1: Ubuntu

1. Open a terminal on your Ubuntu system.
2. Execute the following command to update the system packages:
   - sudo apt update

3. Next, install the MySQL server using the following command:
   - sudo apt install mysql-server - or - sudo apt install default-mysql-server

4. Next start de mysql server.
   - sudo systemctl start mysql

5. Optional: run the secure database script (NO NEEDED)
   - sudo mysql_secure_installation

6. Enter mysql to use database
   - sudo su
   - mysql -u root

7. Run the script wordle_database.sql
   - SOURCE /path/to/wordle_database.sql
   
8. Give your user permition to the database/s
  - CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
  - GRANT ALL PRIVILEGES ON wordle.* TO 'user'@'localhost';
  - GRANT ALL PRIVILEGES ON wordle_english.* TO 'user'@'localhost';

9. Modify scripts to your user and password
   - result=`mysql -u enti -penti -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;" -->
   - result=`mysql -u 'your_user' -p'your_password' -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;"
   - Like this on all the scipts you want to use!

10. Change paths on the game script
   - cd /home/edusagnier/wordle/english/ --> cd /your_path/wordle/english/

11. Game is ready to play
    - In case you want to play both languages run play_selecting_language.sh to select everytime the language to play
    - In the other case you just want to play one language run the script wordle_game_'language'.sh


### Distribution 2: Fedora

1. Open a terminal on your Fedora system.
2. Execute the following command to update the system packages:
   - sudo dnf update

3. Next, install the MySQL server using the following command:
   - sudo dnf install mysql-server

4. Next start de mysql server.
   - sudo systemctl start mysqld

5. Optional: run the secure database script (NO NEEDED)
   - sudo mysql_secure_installation

6. Enter mysql to use database
   - sudo su
   - mysql -u root

7. Run the script wordle_database.sql
   - SOURCE /path/to/wordle_database.sql

8. Give your user permition to the database/s
  - CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
  - GRANT ALL PRIVILEGES ON wordle.* TO 'user'@'localhost';
  - GRANT ALL PRIVILEGES ON wordle_english.* TO 'user'@'localhost';

9. Modify scripts to your user and password
   - result=`mysql -u enti -penti -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;" -->
   - result=`mysql -u 'your_user' -p'your_password' -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;"
   - Like this on all the scipts you want to use!

10. Change paths on the game script
   - cd /home/edusagnier/wordle/english/ --> cd /your_path/wordle/english/

11. Game is ready to play
    - In case you want to play both languages run play_selecting_language.sh to select everytime the language to play
    - In the other case you just want to play one language run the script wordle_game_'language'.sh

### Distribution 3: Arch Linux

1. Open a terminal on your Arch Linux system.
2. Execute the following command to update the system packages:
   - sudo pacman -Syu

3. Next, install the MySQL server using the following command:
   - sudo pacman -S mysql

4. Next start de mysql server.
   - sudo systemctl start mysqld

5. Optional: run the secure database script (NO NEEDED)
   - sudo mysql_secure_installation

6. Enter mysql to use database
   - sudo su
   - mysql -u root

7. Run the script wordle_database.sql
   - SOURCE /path/to/wordle_database.sql

8. Give your user permition to the database/s
  - CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
  - GRANT ALL PRIVILEGES ON wordle.* TO 'user'@'localhost';
  - GRANT ALL PRIVILEGES ON wordle_english.* TO 'user'@'localhost';

9. Modify scripts to your user and password
   - result=`mysql -u enti -penti -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;" -->
   - result=`mysql -u 'your_user' -p'your_password' -e "SELECT word3 FROM wordle_english.words3 ORDER BY RAND() LIMIT 1;"
   - Like this on all the scipts you want to use!

10. Change paths on the game script
   - cd /home/edusagnier/wordle/english/ --> cd /your_path/wordle/english/

11. Game is ready to play
    - In case you want to play both languages run play_selecting_language.sh to select everytime the language to play
    - In the other case you just want to play one language run the script wordle_game_'language'.sh
