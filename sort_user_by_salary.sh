#! /bin/bash
SALARY="$1"
echo "$SALARY"
rm -rf salary_list.txt
echo $?
cat employs.csv|sed '1d'|awk -F ',' "{if($6>$SALARY)print $1}">salary_list.txt
exit
