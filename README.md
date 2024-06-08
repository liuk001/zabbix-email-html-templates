# zabbix-email-html-templates
The definitive and coolest HTML Templates for Zabbix Email.
Tested with Zabbix 6.4.

## Email Subjects:
I prefer to change default Subject line to be more verbose:
 - 🔴 PROBLEM on Host {HOST.HOST}: {EVENT.NAME}
 - ✅ RESOLVED on Host {HOST.NAME} in {EVENT.DURATION}: {EVENT.NAME}
 - ☑️ UPDATED problem on Host {HOST.NAME} in {EVENT.AGE}: {EVENT.NAME}

## NOTE
Before loading html files in your Media Type replace the following:
 - YOUR-ZABBIX-FQDN in order to make Direct Links work
 - The footer

Enjoy.
