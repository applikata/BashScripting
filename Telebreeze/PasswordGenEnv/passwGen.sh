#!/bin/bash
PASSWORD_LENGTH=16

declare -a array
for ((i = 0; i < 12; i++)){
    arr[i]=`cat /dev/urandom | tr -dc 'a-z,A-Z,0-9,-,_,!,@,#,%' | head -c${1:-${PASSWORD_LENGTH}};echo;`
}

sed -i "s/DB_PASSWORD=.*/DB_PASSWORD=${arr[0]}/" .env
sed -i "s/S3_PASSWORD=.*/S3_PASSWORD=${arr[1]}/" .env
sed -i "s/DB_COMMERCIAL_PASSWORD=.*/DB_COMMERCIAL_PASSWORD=${arr[2]}/" .env
sed -i "s/DB_CONSOLE_PASSWORD=.*/DB_CONSOLE_PASSWORD=${arr[3]}/" .env
sed -i "s/DB_MESSENGER_PASSWORD=.*/DB_MESSENGER_PASSWORD=${arr[4]}/" .env
sed -i "s/DB_DASHBOARD_PASSWORD=.*/DB_DASHBOARD_PASSWORD=${arr[5]}/" .env
sed -i "s/DB_EPG_PASSWORD=.*/DB_EPG_PASSWORD=${arr[6]}/" .env
sed -i "s/DB_MIGRATIONS_PASSWORD=.*/DB_MIGRATIONS_PASSWORD=${arr[7]}/" .env
sed -i "s/DB_PLAYER_PASSWORD=.*/DB_PLAYER_PASSWORD=${arr[8]}/" .env
sed -i "s/DB_STATISTICS_PASSWORD=.*/DB_STATISTICS_PASSWORD=${arr[9]}/" .env
sed -i "s/DB_STORAGE_PASSWORD=.*/DB_STORAGE_PASSWORD=${arr[10]}/" .env
sed -i "s/DB_AUTHORIZATION_PASSWORD=.*/DB_AUTHORIZATION_PASSWORD=${arr[11]}/" .env