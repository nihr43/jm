#!/bin/sh

set -e
JAIL_DIR="$1"
JAIL_NAME="$2"

./lib/safe_input.sh $2

echo `hostname` > $JAIL_DIR/$JAIL_NAME/lock

jail -f $JAIL_DIR/$JAIL_NAME/jail.conf -c $JAIL_NAME
