#! /bin/bash
USR_NAME="$1"
OLD_SAL="$2"
NEW_SAL="$3"
sed -i "/$USR_NAME/s/$OLD_SAL/$NEW_SAL/g" employs.csv
cat employs.csv
rm -rf updated_list.txt
NAME=$(cat employs.csv|grep -i "$USR_NAME"|cut -d ',' -f 1 )
LAST_NAME=$(cat employs.csv|grep -i "$USR_NAME"|cut -d ',' -f 2 )
MAILD_ID=$(cat employs.csv|grep -i "$USR_NAME"|cut -d ',' -f 5 )
OLD_SALARY="$OLD_SAL"
NEW_SALARY=$(cat employs.csv|grep -i "$USR_NAME"|cut -d ',' -f 6 )
CONTACT_NUM=$(cat employs.csv|grep -i "$USR_NAME"|cut -d ',' -f 4 )
echo "NAME=$NAME" >>updated_list.txt
echo "LAST_NAME=$LAST_NAME" >>updated_list.txt
echo "MAIL-ID=$MAILD_ID" >>updated_list.txt
echo "UPDATED-NEW-SALARY=$NEW_SALARY" >>updated_list.txt
echo "(old salary=$OLD_SALARY)" >>updated_list.txt
echo "CONTACT-NO.=$CONTACT_NUM" >>updated_list.txt
cat updated_list.txt
exit 
