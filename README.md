# Cool HTML Templates for Zabbix Email notifications
My definitive and coolest HTML Templates for Zabbix Email.
Default email notifications in Zabbix are really basic and I strongly believe that such notifications are really important to communicate effectively and efficiently to users what's going on.
There are similar solutions online, but I decided to write my own implementation based on the following criteria:
 - notifications must be rich enough in useful information
 - they must not be "heavy" in terms of bytes because every notification action is stored into your Zabbix Database and it makes no sense to waste space in this way
 - they must not contain embedded images or links to external URLs because the result may not be deterministic
 - they must be pleasing to the eye :-)

My html is written strictly by hand (but with a minimum of style) and deliberately minimalist.

Examples available in [Images](Images/README.md) folder.

Successfully tested with latest Zabbix 6.4.

## Email Subjects
I prefer to change default Subject line to be more verbose:
 - 🔴 PROBLEM on Host {HOST.HOST}: {EVENT.NAME}
 - ✅ RESOLVED on Host {HOST.NAME} in {EVENT.DURATION}: {EVENT.NAME}
 - ☑️ UPDATED problem on Host {HOST.NAME} in {EVENT.AGE}: {EVENT.NAME}

## Setup notes
Before loading html files in your Media Type replace the following:
 - YOUR-ZABBIX-FQDN in order to make Direct Links work
 - The footer with a meaningful text for your use case

(Enjoy)
