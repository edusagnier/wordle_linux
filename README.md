
# Wordle Game

This is a simple command-line game of Wordle implemented in Bash and SQL.

## Index

- [Auto-installation Linux](#Installation-on-linux)
- [How to play](#How-to-play)
- [Install Manualy](#Install-manualy)

## Installation on linux

- Download the the repository:
	```bash
	git clone https://github.com/edusagnier/wordle_linux.git
	```
- Give the script execution permissions with the command:
    ```bash
    chmod +x installer.sh
    ```
- Run the installer script as **ROOT**:
    ```bash
    ./installer.sh
    ```
> [!IMPORTANT]
> The installer will install on Debian and RedHat Distro.

> [!WARNING]
> In the case of Debian needs the **apt** package managment and Redhat will need **dnf** 

- Follow the on-screen instructions to complete the installation and configuration process.

## How to Play

Once the installation is complete, you would be ask if you want to play. <br>
To start the game after installation run the main script `wordle_game.sh`. <br>
**Have fun playing Wordle!**

## Install Manualy

- Need to install mysql depending on your distribution & Start the sql service <br>

- Later in **root** go to the .sql files and `cat file1.sql | mysql` and edit `credentials.txt` to user && password. <br>

- Log in into mysql (still as root) 
	```bash
	mysql 
	```
- and create user and give permitions to that user on the databases created <br>
	```sql
	CREATE USER '"$username"'@'localhost' IDENTIFIED BY '"$password"'; 
	GRANT ALL PRIVILEGES ON wordle.* TO '"$username"'@'localhost';
	GRANT ALL PRIVILEGES ON wordle_english.* TO '"$username"'@'localhost';
	```

