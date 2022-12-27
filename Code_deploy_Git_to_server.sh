#!/bin/bash


#Go to directory

cd /home/ubuntu/
mkdir $(date +%d%m%Y)
cd $(date +%d%m%Y)
# clone git code

git clone $1 #Need to add GIT URL during script execute.

# copy and backup in /var/www/ directory
cd ..
zip -r $(date +%d%m%Y)_backup.zip  /var/www/html/*

cp -r $(date +%d%m%Y)/*/* /var/www/html/

#restart apache2 service

systemctl restart apache2.service
