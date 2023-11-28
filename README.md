# Wordle on bash
### A wordle game with mysql server and bash script.
#
#

## Installing MySQL on Linux

This repository contains instructions for installing MySQL on different distributions of Linux. Follow the steps corresponding to your distribution to complete the installation.

### Distribution 1: Ubuntu

1. Open a terminal on your Ubuntu system.
2. Execute the following command to update the system packages:
   - sudo apt update -

3. Next, install the MySQL server using the following command:
   - sudo apt install mysql-server - or - sudo apt install default-mysql-server -

4. Next start de mysql server.
   - sudo systemctl start mysql -

5. Optional: run the secure database script (NO NEEDED)
   - sudo mysql_secure_installation -

6. Enter mysql to use database
   - sudo su -
   - mysql -u root -

7. Run the script wordle_database.sql
   - SOURCE /path/to/wordle_database.sql -
