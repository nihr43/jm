## jm
##### A basic Jail Manager for VIMAGE jails

jm is a FreeBSD jail manager with a limited scope.  Unlike similar tools, jm does not manipulate host network or storage resources.

jm's core funtionality is as follows:
 - create
 - delete
 - list
 - start
 - stop
 - restart
 - archive
 - restore

jm was primarily intended to provide basic operations to some higher layer of management.  Therefore, operations like "bootstrap", "clone", "migrate" are not within jm's scope.

jm is written for FreeBSD-12.0 and higher.

Areas for improvement:
 - error handling
 - per-jail jail.conf files
 - error handling
 - basic network configuration ( dhcp, static, or classic )
