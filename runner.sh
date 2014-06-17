#!/bin/bash
cd "$( dirname "$0" )"
java -Xmx1024M -jar minecraft_server.1.7.9.jar -o true &

while true
do
	git add ~/Desktop/minecraft-server/*
	git commit -m "auto-backup"
    git push -u origin master
	sleep 600
done
