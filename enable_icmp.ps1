New-NetFirewallRule -DisplayName "Allow ICMP Echo Request" -Protocol ICMPv4 -IcmpType 8 -Direction Inbound -Action Allow
New-NetFirewallRule -DisplayName "Allow Zabbix Agent" -Direction Inbound -LocalPort 10050 -Protocol TCP -Action Allow
