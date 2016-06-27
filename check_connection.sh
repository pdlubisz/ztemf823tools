#!/bin/bash
while ! ( ping -c 2 -q 8.8.8.8 > /dev/null )
do
  curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=SET_BEARER_PREFERENCE&BearerPreference=Only_LTE'
  sleep 4
  curl -s 'http://192.168.0.1/goform/goform_set_cmd_process' -H 'Host: 192.168.0.1' -H 'Referer: http://192.168.0.1/index.html' --compressed --data 'goformId=CONNECT_NETWORK'
  sleep 15
done
