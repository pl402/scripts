#!/bin/bash

USER="USER"
PASSWORD="PASSWORD"
LOCALDIR="LOCALDIR"
OC_URL="OC_URL"
while [ 1 -eq 1 ]
do
owncloudcmd -u "$USER" -p "$PASSWORD" "$LOCALDIR" "$OC_URL"
sleep 5m
done
