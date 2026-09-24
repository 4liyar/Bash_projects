#! /bin/bash
echo "Total CPU storage is" 
top -bn1 |grep "Cpu(s)"
echo "---------------------------"
echo "Total memory usage"
free -h 
echo "---------------------------"
echo "Total disk usage"
df -h
echo "---------------------------"
echo "Top 5 processes by CPU usage"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu  |head -n 6
echo "---------------------------"
echo " Top  5 precesses by Memory usage"
ps -eo pid,ppid,cmd,%mem --sort=-%mem |head -n 6
echo "---------------------------"
echo "---------------------------"
echo "This is my first script."
