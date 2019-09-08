install:
	[ -d /usr/local/lib/jm ] || mkdir /usr/local/lib/jm ;\
        cp ./lib/* /usr/local/lib/jm/ ;\
	[ -d /usr/local/etc/jm ] || mkdir /usr/local/etc/jm ;\
        cp ./jm.config /usr/local/etc/jm/jm.config ;\
        cp ./jm /usr/sbin/
