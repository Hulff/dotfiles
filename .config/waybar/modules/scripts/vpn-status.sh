#!/bin/zsh

# Checa se há alguma interface tun0, wg0 ou similar ativa
if ip a | grep -q 'tun0\|wg0'; then
    echo "󱛌 "
else
    echo "󰤮 "
fi

