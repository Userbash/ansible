#!/bin/bash

format_date=$(date +"%d%m%Y")
#docker exec mariadb sh -c 'exec mysql -uroot -p"q2epnsdadsf378q4"' < /media/ds01/files/var/lib/mysql/dump/$format_date.sql

docker exec mariadb /usr/bin/mysql -u root --password=q2epnsdadsf378q4 -e 'CREATE DATABASE zabbix;'
docker exec -i mariadb /usr/bin/mysql -u root --password=q2epnsdadsf378q4 zabbix  < /media/ds01/files/home/dump/$format_date.sql
#docker exec -it maridb /usr/bin/mysql -u root --password=q2epnsdadsf378q4 mysql> SHOW TABLES;
