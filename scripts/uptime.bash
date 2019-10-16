#!/usr/bin/env bash

URL="https://yacs.cs.rpi.edu/"

CURLOUT=$(curl -Isw "HTTPCODE:%{http_code} Time:%{time_total}" $URL)
# echo $CURLOUT

HTTPCODE=$(echo $CURLOUT | awk '{split($0,a,":"); print a[1];}' | awk '{split($0,a); print a[2];}')

# init out.csv if not exists, otherwise continue
if [[ -z $(cat out.csv 2> /dev/null) ]]; then
  touch out.csv
  printf "DATE\tURL\tHTTPCODE\n" > out.csv
fi

DATE=$(date)

# append record to csv
printf "$DATE\t$URL\t$HTTPCODE\n" >> out.csv

# return proper error code (if not 200 - alert is handled through Jenkins)
if [[ HTTPCODE -ne "200" ]]; then
  echo "NON 200 HTTP CODE @ $DATE"
  exit 1
fi
