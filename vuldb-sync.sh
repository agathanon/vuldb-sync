#!/bin/bash

cd /home/agatha/data/feeds/vuldb

# configuration file vars:
#    VULDB: vuldb api key
#    LASTLOG: name of file to store last fetch results
#    ALERTLOG: name of file to store alerts

source ./config
LASTDATE=$(/usr/bin/stat -c '%Y' $LASTLOG)

/usr/bin/curl -s -k --data "apikey=$VULDB&entry_timestamp_create_start=$LASTDATE&fields=vulnerability_cvss3_meta_basescore,exploit_exploitability,countermeasure_remediationlevel" https://vuldb.com/?api > $LASTLOG

/usr/bin/cat $LASTLOG | /usr/bin/jq '.result[]? | {id: .entry.id, cve: .source.cve.id, title: .entry.title, score: .vulnerability.cvss3.meta.basescore, created: .entry.timestamp.create}' >> $ALERTLOG

