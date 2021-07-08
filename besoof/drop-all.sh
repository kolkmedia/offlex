#!/bin/bash

read -p "Are you sure you want to delete all your containers images and volumes? (y/n)" -n 1 -r
echo  ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
    docker kill $(docker ps -aq)
	docker rm -f $(docker ps -aq)
	rm -rf mysql/db_data/*
	docker volume rm gxdocker_db_data
	docker volume rm gxdocker_db
    docker volume rm gxdocker_deploy
	docker rmi -f $(docker images -aq)
fi
