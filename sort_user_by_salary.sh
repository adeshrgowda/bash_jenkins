#! /bin/bash
rm -rf salary_list.txt
echo $?
cat employs.csv|sed '1d'|awk -F ',' '{ SALARY=$1 ;if($6>"$SALARY")print $1}'>salary_list.txt
exit
