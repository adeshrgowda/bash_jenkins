#! /bin/bash
echo "please enter the name of the user to view details"
 USR_NAME="$1"
echo "$USR_NAME"
rm -rf user.txt
#rm -rf user_details.txt
NAME=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 1 )
LAST_NAME=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 2)
ADRESS=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 3)
CONTACT_INF=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 4)
MAIL=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 5)
SALARY=$(cat employs.csv |grep -i "$USR_NAME"|cut -d ',' -f 6)
echo "NAME=$NAME" >>user.txt
echo "LAST_NAME=$LAST_NAME" >>user.txt
echo "ADDRESS=$ADRESS" >>user.txt
echo "CONTACT_NUMBER=$CONTACT_INF" >>user.txt
echo "MAIL -ID=$MAIL" >>user.txt
echo "SALARY=$SALARY" >>user.txt
echo $?
#echo "$USR_DETL"
exit
