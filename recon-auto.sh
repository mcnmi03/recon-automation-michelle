#!/bin/bash

mkdir -p output logs

timestamp() {
  date "+%Y-%m-%d %H:%M:%S"
}

echo "[$(timestamp)] Starting Recon Automation" | tee -a logs/progress.log

while read domain; do

  echo "[$(timestamp)] Scanning: $domain" | tee -a logs/progress.log

  assetfinder --subs-only $domain 2>>logs/errors.log \
  | anew output/all-subdomains.txt \
  >> logs/progress.log

done < input/domains.txt

echo "[$(timestamp)] Checking live hosts..." | tee -a logs/progress.log

cat output/all-subdomains.txt \
| httpx-toolkit -silent 2>>logs/errors.log \
| anew output/live.txt \
>> logs/progress.log

echo "========== FINAL RESULT ==========" | tee -a logs/progress.log

echo "Total Unique Subdomains:" | tee -a logs/progress.log
wc -l output/all-subdomains.txt | tee -a logs/progress.log

echo "Total Live Hosts:" | tee -a logs/progress.log
wc -l output/live.txt | tee -a logs/progress.log
