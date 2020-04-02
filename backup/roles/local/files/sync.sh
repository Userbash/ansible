#!/bin/bash
PATH=/etc:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

mkdir /home/alex/backup/`date +%Y-%m-%d`
cd /home/alex/backup/`date +%Y-%m-%d`
rsync -avh -e "ssh -p 22" --log-file=/home/alex/backup/`date +%Y-%m-%d`/rsync.log ansible@172.16.0.14:/media/ds01/files/home/dump/* /home/alex/backup/`date +%Y-%m-%d`/

