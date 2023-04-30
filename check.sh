#!/bin/bash

url="http://nginx:80"
log_file="response.log"


STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $url)

if [[ $STATUS_CODE -lt 200 || $STATUS_CODE -ge 400 ]]; then
    echo "$(date) - Response code: $STATUS_CODE" >> $log_file
fi
