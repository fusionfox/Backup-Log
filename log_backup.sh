#!/bin/bash
#Script run upon sucessful completion of my daily SuperDuper! backup
#
#Find the time difference between now and when the backup began, save to variable
let timediff=`date +%s`-`while read LINE;do echo $LINE;done < ~/Desktop/.backupstarttime`
#Append the backup stats to the log file
echo "Backup successfully completed at `date` and took `date -j -u -f '%s' "$timediff" +'%H:%M:%S'` to complete" >> ~/Desktop/backups.log
#Remove the temp file made to store when the backup began
rm ~/Desktop/.backupstarttime