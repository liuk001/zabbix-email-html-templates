# Makefile to prepare your HTML templates for your context
#

# CUSTOM Begins
# Change the following variables as per your needs:
myzabbix := myzabbix.example.com
myfooter := Wonderful Monitoring with Zabbix
# CUSTOM Ends

objects = _problem.html _resolved.html _updated.html

all: 
	@echo Run \"make mytemplates\" to prepare file for upload to your Zabbix instance

mytemplates: $(objects)
	@echo Your files are ready, upload them to your Zabbix instance

_problem.html:
	sed -e 's/YOUR-ZABBIX-FQDN/$(myzabbix)/g; s/Your custom footer message goes here/$(myfooter)/g' Templates/template-problem.html > _problem.html
	
_resolved.html:
	sed -e 's/YOUR-ZABBIX-FQDN/$(myzabbix)/g; s/Your custom footer message goes here/$(myfooter)/g' Templates/template-resolved.html > _resolved.html
	
_updated.html:
	sed -e 's/YOUR-ZABBIX-FQDN/$(myzabbix)/g; s/Your custom footer message goes here/$(myfooter)/g' Templates/template-updated.html > _updated.html
	
clean:
	/bin/rm -f $(objects)

