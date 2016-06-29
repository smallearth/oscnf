#!/bin/sh
#
cd /var/www/shell
if [ ! -d file ]
then
        mkdir file
fi

cd file

for ((i=0; i<10; i++));do
        if [ ! -f file_{$i}.txt ]
        then
                touch file_$i.txt
        fi
done