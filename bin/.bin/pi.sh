#!/usr/bin/bash

domainsblocked=$(curl -s "http://pihole.hippi.xyz/admin/api.php?summary" | jq -r '.domains_being_blocked')

dnsqueriestoday=$(curl -s "http://pihole.hippi.xyz/admin/api.php?summary" | jq -r '.dns_queries_today')

adsblockedtoday=$(curl -s "http://pihole.hippi.xyz/admin/api.php?summary" | jq -r '.ads_blocked_today')

echo "BlK LIST:" $domainsblocked "" "//" "QRYS:"  $dnsqueriestoday "" "//" "" "ADS BCK:"  $adsblockedtoday
