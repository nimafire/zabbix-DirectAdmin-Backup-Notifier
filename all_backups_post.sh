#!/bin/bash
hostname=$HOSTNAME
zabbix_sender -z ZABBIXSERVERIP -s "$HOSTNAME" -k "directadmin.backup" -o "1"
