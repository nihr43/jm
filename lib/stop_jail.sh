#!/bin/sh

set -e
JAIL_DIR="$1"
JAIL_NAME="$2"

./lib/safe_input.sh $2

service jail stop $JAIL_NAME
#jail -f $JAIL_DIR/$JAIL_NAME/.jail.conf -r $JAIL_NAME

rm $JAIL_DIR/$JAIL_NAME/lock
