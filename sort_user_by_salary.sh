#! /bin/bash
rm -rf salary_list.txt
RANGE="$1"
cat employs.csv|sed '1d'|awk -F ',' '{if($6>'$RANGE')print $1 "-" $6}'>salary_list.txt
echo $?
exit
