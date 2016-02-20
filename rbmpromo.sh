#!/bin/bash

curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=DISCONNECT_NETWORK' 
#NETWORK_auto
curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=SET_BEARER_PREFERENCE&BearerPreference=Only_WCDMA'

#curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=CONNECT_NETWORK'
#curl -s -0 "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0" -H "Accept: application/json, text/javascript, */*; q=0.01" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" -H "X-Requested-With: XMLHttpRequest" -H "Referer: http://192.168.0.1/index.html" -H "Connection: keep-alive" -H "Pragma: no-cache" -H "Cache-Control: no-cache" --data "isTest=false&goformId=USSD_PROCESS&USSD_operator=ussd_send&USSD_send_number=*111*480*3"%"23&notCallback=true"

curl -s -0 "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0" -H "Accept: application/json, text/javascript, */*; q=0.01" -H "Accept-Language: en-US,en;q=0.5" --compressed -H "Content-Type: application/x-www-form-urlencoded; charset=UTF-8" -H "X-Requested-With: XMLHttpRequest" -H "Referer: http://192.168.0.1/index.html" -H "Connection: keep-alive" -H "Pragma: no-cache" -H "Cache-Control: no-cache" --data "isTest=false&goformId=USSD_PROCESS&USSD_operator=ussd_send&USSD_send_number=*101"%"23&notCallback=true"


curl -s "http://192.168.0.1/goform/goform_get_cmd_process?cmd=ussd_write_flag&_=$(date +s)" -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html'

sleep 2

curl -s "http://192.168.0.1/goform/goform_get_cmd_process?cmd=ussd_write_flag&_=$(date +s)" -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html'

sleep 2

curl -s "http://192.168.0.1/goform/goform_get_cmd_process?cmd=ussd_data_info&_=$(date +%s)" -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' | sed -r 's/.+ussd_data":"([0-9a-fA-F]+)"}/\1/; s/0{2}//g' | xxd -r -p | grep -q "Usluga wlaczona" && echo "OK"

curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=DISCONNECT_NETWORK'

curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=SET_BEARER_PREFERENCE&BearerPreference=Only_LTE'

sleep 2

curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=CONNECT_NETWORK'

