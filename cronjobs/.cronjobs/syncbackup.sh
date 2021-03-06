#!/usr/bin/env sh

echo "-------------- **** Starting Workspace Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .workspacebackup`
touch $TEMP_FILE

rsync --progress -ahr /home/max/workspace/ /mnt/data/Linux/workspace

rm $TEMP_FILE

echo "-------------- **** Starting Configs Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .configsbackup`
touch $TEMP_FILE

rsync --progress -ahr /home/max/configs/ /mnt/data/Linux/configs

rm $TEMP_FILE

echo "-------------- **** Starting General Folders Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .generalbackup`
touch $TEMP_FILE

rsync --progress -ahr /home/max/Books /mnt/data/Linux
rsync --progress -ahr /home/max/Documents /mnt/data/Linux
rsync --progress -ahr /home/max/Pictures /mnt/data/Linux


rm $TEMP_FILE

echo "-------------- **** Starting Music Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .musicbackup`
touch $TEMP_FILE

rsync --progress -ahr /home/max/Music /mnt/data/Linux

rm $TEMP_FILE

echo "-------------- **** Starting Internal Drive Backup $(date) **** -------------"

TEMP_FILE=`mktemp --suffix .internalbackup`
touch $TEMP_FILE

rsync --progress -ahr /mnt/data/ /mnt/backup/

rm $TEMP_FILE

echo "Internal Backup Successful: $(date)"
