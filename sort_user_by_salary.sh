#! /bin/bash
rm -rf salary_list.txt
echo $?
cat employs.csv|sed '1d'|awk -F ',' '{if($6>100000)print $1 "-" $6}'>salary_list.txt
exit
