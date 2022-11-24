#! /bin/bash
echo "please enter the name of the user to view details"
 USR_NAME="$1"
echo "$USR_NAME"
rm -rf user_details.txt
NAME=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 1 )
LAST_NAME=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 2)
ADRESS=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 3)
CONTACT_INF=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 4)
MAIL=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 5)
SALARY=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 6)
echo "NAME=$NAME" >>user_details.txt
echo "LAST_NAME=$LAST_NAME" >>user_details.txt
echo "ADDRESS=$ADRESS" >>user_details.txt
echo "CONTACT_NUMBER=$CONTACT_INF" >>user_details.txt
echo "MAIL -ID=$MAIL" >>user_details.txt
echo "SALARY=$SALARY" >>user_details.txt
#echo "$USR_DETL"
exit
