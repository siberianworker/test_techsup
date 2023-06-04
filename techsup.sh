#!/bin/bash

# First - download file
#wget https://raw.githubusercontent.com/GreatMedivack/files/master/list.out


# Second - create two files SERVER_DATE_failed.out and SERVER_DATE_running.out

# Name server
SERVER=server
name_server=${1:-$SERVER}

# Date for name
DATE="_`date +%d_%m_%Y`_"
name_server+="$DATE"

# Filenames
filename_failed="$name_server"failed.out
filename_running="$name_server"running.out

services=list.out

grep -E 'Error|CrashLoopBackOff' $services | cut -f 1 > $filename_failed
#grep Running $services > $filename_running

#echo $failed
#echo $running

# Third - create SERVER_DATE_report.out
filename_report="$name_server"report.out
services_running="-Количество работающих сервисов: "
services_failed="-Количество сервисов с ошибками: "
date_report=$(date +%d/%m/%Y)


# archivator tar (tar cf - .)

exit 0
