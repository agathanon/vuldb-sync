# vuldb-sync
bash script to pull in new entries from https://vuldb.com
will output json with the following keys:
 - vuldb id (id)
 - cve id (cve)
 - vuln title (title)
 - cvss3 meta base score (score)
 - creation timestamp (created)

## requirements
- bash (for `source` built-in)
- curl
- jq

## setup
run setup.sh to create the config file
populate the config file with your vuldb api key

## defaults
- LASTLOG=lastlog.json
- ALERTLOG=alerts.json

## usage suggestions
run using crontab and `tail -f alerts.json`

## example output
```json
{
  "id": "186674",
  "cve": "CVE-2021-42114",
  "title": "DRAM Target Row Refresh Blacksmith Remote Code Execution",
  "score": "9.0",
  "created": "1637046494"
}
```
