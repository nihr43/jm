#!/bin/sh

set -e
JM_DIR="$1"
JAIL_NAME="$2"

./lib/safe_input.sh $2


if [ ! -e $JM_DIR/.base.txz ]; then
        fetch https://download.freebsd.org/ftp/releases/amd64/amd64/11.1-RELEASE/base.txz -o $JM_DIR/.base.txz
fi

if [ -e $JM_DIR/$JAIL_NAME ]; then
	echo "$JAIL_NAME exists"
	exit
fi


echo "creating $JAIL_NAME"

mkdir $JM_DIR/$JAIL_NAME
tar xpvf $JM_DIR/.base.txz -C $JM_DIR/$JAIL_NAME

echo "$JAIL_NAME	{host.hostname = \"$JAIL_NAME\"; ip4.addr += \"bridge0|192.168.11.50/24\";} #jm_managed" >> /etc/jail.conf

#cp $BASE_DIR/.templates/default/etc/rc.conf $BASE_DIR/$JAIL_NAME/etc/rc.conf
#cp $BASE_DIR/.templates/default/etc/resolv.conf $BASE_DIR/$JAIL_NAME/etc/resolv.conf
#mkdir $BASE_DIR/$JAIL_NAME/root/.ssh
#cp $BASE_DIR/.templates/default/root/.ssh/authorized_keys $BASE_DIR/$JAIL_NAME/root/.ssh/authorized_keys
#cp $BASE_DIR/.templates/default/etc/freebsd-update.conf $BASE_DIR/$JAIL_NAME/etc/freebsd-update.conf
#cp $BASE_DIR/.templates/default/etc/ssh/sshd_config $BASE_DIR/$JAIL_NAME/etc/ssh/sshd_config
