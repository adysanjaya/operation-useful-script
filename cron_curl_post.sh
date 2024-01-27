#!/bin/bash
dateKemarin=$(date +%Y:%m:%d -d "yesterday")
datetimeKemarin="$dateKemarin 23:00:00"
/usr/bin/curl -X POST -d "datetime=$datetimeKemarin" https://url_api_untuk_melakukan_proses_yang_diinginkan