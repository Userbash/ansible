#!/bin/bash

format_date=$(date +"%d%m%Y")
docker exec mariadb sh -c 'exec mysqldump --all-databases -uroot -p"q2epnsdadsf378q4"' > /home/alex/docker-mysql-master/config/home/dump/$format_date.sql
chmod -R 777 /home/alex/docker-mysql-master/config/home/dump
chmod -R 777 /home/alex/docker-mysql-master/config/home/dump/*
