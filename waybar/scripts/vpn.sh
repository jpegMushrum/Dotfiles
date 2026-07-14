#!/bin/bash

IFACE="singbox_tun"

if ip link show "$IFACE" >/dev/null 2>&1; then
    echo '{"text":"󰖂 ","class":"connected"}'
else
    echo '{"text":"","class":"disconnected"}'
fi