#!/bin/sh
Broker_List= `mqsilist | tr -d "'" | cut -d" " -f4 | grep -v completion`
for brk in $Broker_List;
do
EG_LIST=`mqsilist $brk | grep "intergration node" | tr -d "'" | cut -d " " -f12 `
for i in $EG_LIST;
do
BRK=$s
EG=`echo $i | awk '{print $NF}'`
echo "---> $BRK = $EG "
mqsilist $brk -e $EG -d2 
done
done
