#!/bin/bash

VPN_NAME="atlantico"

# Verifica se a VPN está ativa
if nmcli connection show --active | grep -q "$VPN_NAME"; then
    nmcli connection down "$VPN_NAME"
else
    nmcli connection up "$VPN_NAME"
fi
