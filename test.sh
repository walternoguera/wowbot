#!/bin/bash

LOG="connection.log"
WOW="World of Warcraft 3.3.5a"
#WOW_PATH="Documents/"$WOW"/Logs"
STATUS=$(awk 'END{print $5}' Documents/"$WOW"/Logs/$LOG)

#awk -F, {if ($5 == "COP_GET_CHARACTERS") print $5} $log

if [[ $STATUS == "COP_GET_CHARACTERS" ]]; then
    echo "esta conectado"
else
    if [[ $STATUS == "LOGIN_STATE_DISCONNECTED" ]]; then
        echo "Desconectado del servidor"
        sleep 1; echo "abriendo"
    fi
fi


