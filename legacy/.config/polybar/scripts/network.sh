#!/bin/bash

VPN_ENTRY="wg-mullvad"


ACTIVE_CONNECTION_VPN=$(nmcli --mode tabular --terse connection show --active | grep wg | cut -d ':' -f1) || true

ACTIVE_WIFI_CONNECTION=$(nmcli --mode tabular --terse connection show --active | grep wlan0 | cut -d ':' -f1) || true

if [ "$ACTIVE_CONNECTION_VPN" == "$VPN_ENTRY" ] && [ "$ACTIVE_WIFI_CONNECTION" != "" ]
then
        VPN_STATUS=$(mullvad status | cut -c14-26)
        echo "$ACTIVE_WIFI_CONNECTION - $VPN_STATUS"
else
        echo "oopsy daisy oopsy daisy oopsy daisy"
fi

