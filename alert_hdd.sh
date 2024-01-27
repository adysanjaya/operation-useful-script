#!/bin/bash
#if storage > 80%, send alert to telegram
space=$(df -h | grep 'ssd2' | awk '{print $5}' | tr -d %)

if [ $(echo "$space") -gt 80 ]
then
  server_ip=$(hostname -I | awk '{print $1}')
  curl --data-urlencode "chat_id=INPUTYOURCHATID" --data-urlencode "text=$server_ip hardisk $space" https://api.telegram.org/bot1111111111:INPUTYOURBOTTOKEN/sendMessage
fi

# Note :
# UBUNTU SERVER
# 'ssd2' adalah nama dari disk yang dipantau, dalam hal ini attached storage
# Script ini digunakan untuk memberi peringatan jika hardisk server hampir penuh, implikasi bisa membuat server & website down dan sulit untuk diakses