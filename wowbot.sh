#!/bin/bash

WOW="World of Warcraft 3.3.5a"
GRUNT_STATE=`stdbuf -o0 tail -f Documents/"$WOW"/Logs/connection.log| awk -F" " '{print $5}' 2> /dev/null`

	if [$GRUNT_STATE == "LOGIN_STATE_CONNECTING"]; then
		echo "la cuenta esta conectada"
	else [$GRUNT_STATE == "LOGIN_STATE_DISCONNECTED"]; then
		echo "la cuenta esta desconectada"
	fi
