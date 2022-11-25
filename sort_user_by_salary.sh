#! /bin/bash
SALARY="$1"
echo "$SALARY"
cat employs.csv|sed '1d'|awk -F ',' '{if ($6 >= "$SALARY") print $1}'>salary_list.txt
exit
