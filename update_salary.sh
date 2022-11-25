#! /bin/bash
USR_NAME="$1"
OLD_SALARY="$2"
NEW_SALARY="$3"
cat employs.csv|sed "/$USR_NAME/s/$OLD_SAL/$NEW_SAL/g" >update_salary.text
cat update_salary.text
exit
