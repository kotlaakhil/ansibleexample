#!/usr/bin/sh

EG=$1

if [ -z "$EG" ]; then
        echo "Please privide EG "
        exit
fi

        PROCESSID=$(ps -ef | grep $EG | grep -v grep | tr -s " " | cut -d" " -f2)

        if [ ! -z "$PROCESSID" ] ;  then
                echo " resatrt done $EG"
                kill -9 $PROCESSID
        # ps -ef | grep $EG 
        fi
