#!/bin/bash

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=DISCONNECT_NETWORK" 

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=SET_BEARER_PREFERENCE&BearerPreference=NETWORK_auto"

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=SET_BEARER_PREFERENCE&BearerPreference=NETWORK_auto"

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=USSD_PROCESS&USSD_operator=ussd_send&USSD_send_number=*111*480*3"

curl "http://192.168.0.1/goform/goform_get_cmd_process?cmd=ussd_data_info" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html"

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=DISCONNECT_NETWORK"

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=SET_BEARER_PREFERENCE&BearerPreference=Only_LTE"

curl "http://192.168.0.1/goform/goform_set_cmd_process" -H "Host: 192.168.0.1" -H "Referer: http://192.168.0.1/index.html" --compressed --data "goformId=CONNECT_NETWORK"
