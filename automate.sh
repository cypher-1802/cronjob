#! /bin/sh

touch update.sh
echo -e "echo \"*******Getting Updates*******\"\nsudo apt-get update\necho \"********Updating*********\"\nsudo apt update\necho \"***********Upgrading**********\"\nsudo apt upgrade\necho \"System Updated Successfully\"" > update.sh
chmod +x update.sh

crontab -l > crontab_new
echo "0 0 * * 0 /home/cypher/update.sh" >> crontab_new
crontab crontab_new
crontab -e

echo "Cronjob created Successfully! Your system will be now updated weekly on Sunday:)"
