#! /bin/bash
cat employs.csv|sed '1d'|awk -F ',' '{if ($6 >= "$1") print $1}'>salary_list.txt
exit
