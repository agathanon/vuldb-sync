#!/bin/sh

touch config
echo 'VULDB=' > config
echo 'LASTLOG="lastlog.json"' >> config
echo 'ALERTLOG="alerts.json"' >> config

touch lastlog.json
