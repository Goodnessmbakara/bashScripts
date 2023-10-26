Copy the backup.sh script into the /usr/local/bin/ directory. (Do not use mv.)
Note: You may need to use sudo cp in order to create a file in /usr/local/bin/.

sudo cp -r backup.sh /usr/local/bin/

Using crontab, schedule your /usr/local/bin/backup.sh script to backup the important-documents folder every 24 hours to the directory /home/project

0 0 * * * /usr/local/bin/backup.sh /home/project/important-documents /home/project
