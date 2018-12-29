## jm
##### A basic Jail Manager for VIMAGE jails

jm is a FreeBSD jail manager with a limited scope.  jm attempts to create jails that appear as much like full VMs as the technology permits.

jm's core funtionality is as follows:
 - create
 - delete
 - list
 - start
 - stop
 - restart
 - archive
 - restore

jm was primarily intended to provide basic functionality to some higher layer of management.  Therefore, operations like "bootstrap", "clone", "migrate" are not within jm's scope

jm is written for FreeBSD-12.0 and higher.

Thanks to VIMAGE networking, and ifconfig's `name` parameter, network interfaces appear as a down vnet0 in jails, and must be configured through regular means within the jail.

Areas for improvement:
 - error handling
 - per-jail jail.conf files
 - basic network configuration ( dhcp, static, or classic )
 - persistent vnet mac addresses
 - base tars
 - ports makefile
