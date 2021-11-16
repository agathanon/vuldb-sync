# vuldb-sync
bash script to pull in new entries from https://vuldb.com
will output json with the following keys:
 - vuldb id (id)
 - cve id (cve)
 - vuln title (title)
 - cvss3 meta base score (score)
 - creation timestamp (created)

# setup
run setup.sh to create the config file
populate the config file with your vuldb api key

# defaults
LASTLOG=lastlog.json
ALERTLOG=alerts.json
