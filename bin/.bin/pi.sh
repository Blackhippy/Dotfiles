#!/usr/bin/bash
fg="#D9D4D2"
fg1="#885152"
fg2="#A22B17"
fg3="#A22B17"
domainsblocked=$(curl -s "http://pihole.hippi.xyz/admin/api.php?summary" | jq -r '.domains_being_blocked')

dnsqueriestoday=$(curl -s "http://pihole.hippi.xyz/admin/api.php?summary" | jq -r '.dns_queries_today')

adsblockedtoday=$(curl -s "http://pihole.hippi.xyz/admin/api.php?summary" | jq -r '.ads_blocked_today')

echo "%{F$fg1}ADS BCK:"%{F-}  %{F$fg}$adsblockedtoday%{F-}

#echo %{F$fg1}"BlK LIST:" $domainsblocked%{F-} "" "%{F$fg}//"%{F-} "%{F$fg2}QRYS:" $dnsqueriestoday%{F-}"" "%{F$fg}//"%{F-} "" "%{F$fg3}ADS BCK:"  $adsblockedtoday%{F-}
