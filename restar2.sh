#!/bin/bash

# были еще эти вот строчки но птом я их стер, показались лишними.  touch memory.txt cpu.txt messages.txt erors.txt seti.txt # make log files
# chmod +r memory.txt cpu.txt messages.txt erors.txt seti.txt # give read write eXe to all files

for i in $(free > memory.txt | cat /proc/stat > cpu.txt) {1..10}  
do
sleep 1
done


for ii in $(cat /var/log/messages > messages.txt | jornalctl -p err > erors.txt) {1..10} # (jornalctl -p err > erors.txt) мб так правильнее?
do
sleep 1
done

for iii in $(ip a > seti.txt) # без цыкла будет проще?
do
sleep 
done
