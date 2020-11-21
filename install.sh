#!/bin/bash

DATA_DIR=/data/appdatas/cat
LOG_DIR=/data/applogs/cat

mkdir -p $DATA_DIR
mkdir -p $LOG_DIR

chmod 777 /data/appdatas
chmod 777 /data/applogs

cp ./client.xml $DATA_DIR
cp ./datasources.xml $LOG_DIR

docker build -t cat:3.0.0 .


