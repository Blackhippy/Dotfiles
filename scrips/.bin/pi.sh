#!/usr/bin/bash

domainsblocked=$(curl -s "http://192.168.1.148/admin/api.php?summary" | jq -r '.domains_being_blocked')

dnsqueriestoday=$(curl -s "http://192.168.1.148/admin/api.php?summary" | jq -r '.dns_queries_today')

adsblockedtoday=$(curl -s "http://192.168.1.148/admin/api.php?summary" | jq -r '.ads_blocked_today')

echo "Blacklisted:" $domainsblocked "" "*" "" "Today queries:"  $dnsqueriestoday "" "*" "" "Ads blocked:"  $adsblockedtoday
