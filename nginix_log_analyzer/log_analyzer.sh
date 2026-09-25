#! /bin/bash

echo "--------------Welcome to nginix Log Analyzer.---------------"
echo "                                                              "
file=nginix_log_file.txt
echo "                    Top 5 IP Addresses with the most requests"
awk "{print $1}" $file | sort | uniq -c | sort -nr | head -5 | awk '{print $2, $1 " requests" }'
echo "------------------------------------------------------------------------------------"

echo "                    Top 5 most requested paths"

awk '{print $7}' $file |sort | uniq -c | sort -nr |head -n 5 | awk '{print $2, $1 " requests"}'
echo "------------------------------------------------------------------------------------"

echo "                    Top 5 response status code"
awk '{print $9}' $file |sort | uniq -c | sort -nr |head -n 5 | awk '{print $2, $1 " response"}'
echo "------------------------------------------------------------------------------------"

echo "                    Top 5 user agents"
awk -F '"' '{print $6}' $file |sort | uniq -c | sort -nr |head -n 5 | awk '{print $2, $1 " agents"}'
echo "------------------------------------------------------------------------------------"

echo "-----------------------------"
echo "solved by Abdul Musawer omery"
echo "-----------------------------"
