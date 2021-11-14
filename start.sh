#!/bin/sh

USERNAME='minecraft'
JARFILE='mc_server_1.17.1.jar'
SERVICE='minecraft1.17.1'
SPI_PATH='/opt/mc/server/'
ME=`whoami`
MEM="3G"

if [ $ME == $USERNAME ] ; then
  if (screen -list | grep -o "${SERVICE}") > /dev/null ; then
    echo "$SERVICE is already running!"
    exit 0;
  else
    cd $SPI_PATH
    screen -AmdS $SERVICE java -server -Xmx$MEM -Xms$MEM -jar $JARFILE nogui
  fi
else
  echo "Please run the" $USERNAME "user."
  exit 0;
fi
