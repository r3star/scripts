#!/bin/bash

for i in $(free > /restar/logs/memory.txt | cat /proc/stat > /restar/logs/cpu.txt) {1..10}  
do
sleep 1
done


for iii in $(journalctl -p err > /restar/logs/erors.txt | ip a > /restar/logs/seti.txt) 
do
echo "all ok"
done
