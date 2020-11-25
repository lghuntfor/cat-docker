#!/bin/bash

DATA_DIR=/data/appdatas/cat
LOG_DIR=/data/applogs/cat

#创建数据与日志文件目录
mkdir -p $DATA_DIR
mkdir -p $LOG_DIR

#设置目录的权限
chmod 777 /data/appdatas
chmod 777 /data/applogs

#拷贝文件
cp ./client.xml $DATA_DIR
cp ./datasources.xml $LOG_DIR


