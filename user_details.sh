#! /bin/bash
echo "please enter the name of the user to view details"
 USR_NAME="Bharath"
echo "$USR_NAME"
NAME=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 1 )
LAST_NAME=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 2)
ADRESS=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 3)
CONTACT_INF=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 4)
MAIL=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 5)
SALARY=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 6)
echo "NAME=$NAME"
echo "LAST_NAME=$LAST_NAME"
echo "ADDRESS=$ADRESS"
echo "CONTACT_NUMBER=$CONTACT_INF"
echo "MAIL -ID=$MAIL"
echo "SALARY=$SALARY"
#echo "$USR_DETL"
exit
