# jm
A Jail Manager that values simplicity, scalability, and the unix philosophy.


**jm** does

 - create jails
 - start jails
 - list jails
 - stop jails
 - delete jails
 
 
**jm** does not
 
 - rely on a basejail
 - interact with zfs
 - interact with system configuration
 - clone jails
 - migrate jails
 - provision services


**jm** is different because

 - jails each have their own jail.conf.  **jm** does not access the host's /etc/
 - **jm** will work on a cluster with a common /mnt/jails/
 - everything is a file in the configured JM_DIR, including per-jail locks
