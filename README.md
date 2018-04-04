# jm
A Jail Manager that values simplicity, scalability, and the unix philosophy


Why?
------
  You're probably thinking "come on, another jail management utility?".  We already have iocage, qjail, ezjail, and more...  Well, none of these quite do it for me.  Warning, opinions follow...
  
  - ezjail and qjail: The basejail, to me, is not an elegant solution.  For those not in the know, ezjail creates a single root filesystem that is mounted readonly in the jails.  Jails have their own /var and /usr of course, but most of the system is shared.  The shared filesystem, to me, makes the maintnence of some-dozen jails extremely painful and confusing.  For excample, you have to shut down all your jails to do a proper upgrade.  This is an automatic red flag.  Sharing a kernel is one thing, but sharing system files is considerable added complexity for the benefit of a few hundred MB.  To me, ezjail is not fit for use in an enterprise environment.
  
  - iocage: Requires ZFS.  This one is simple; I'd really like to be able to run jails on a cluster of servers that share a common NFS or Gluster mount, and a common management endpoint.  iocage jails have to be local.  Furthermore, (like iohyve), because iocage seemingly stores everything in a new dataset, it quickly makes a mess of your "zfs list" and other commands.  It eirks me when "simple" utilities commandeer my storage subsystem.  Again, not fit for use in an enterprise environment.
  
  
  So what does jm do that is different?  
  
  - jails are independent.  they share only the kernel.  freebsd-update works.  cold migration works if you need it to.  no funny-business.
  - storage is irrelevant.  Either you or your storage team make the decisions here.  Not me.
  - networking is still weird.  no raw sockets.  this means no dhcp or ping.  However, I do plan to write something to dynamically allocate IPs from a configured range.  This would be a small step towards ddns.
  - intended for use with config management.  There are no plans for cloning, imaging, migration, snapshotting; nothing.  There are better tools out there for service deployment and configuration management than I'll ever write.  If you haven't already, learn them.
