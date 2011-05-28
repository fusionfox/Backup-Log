#!/bin/bash
#Script run before my daily SuperDuper! backup begins
#
#Create a temp file to store the time when the backup began
echo `date +%s` > ~/Desktop/.backupstarttime