#!/bin/sh
Broker_List=`mqsilist | awk '{print $4}'| tr -d "'" | grep -v completion`
for brk in $Broker_List; do
EG_LIST=`mqsilist $brk | grep "integration node" |awk '{print $4}' |tr -d "'" `
    for i in $EG_LIST; do
        BRK=$brk
        EG=`echo $i | awk '{print $NF}'`
        echo "---> $BRK = $EG "
        mqsilist $brk -e $EG -d2
    done
done  

