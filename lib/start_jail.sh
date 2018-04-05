#!/bin/sh

set -e
JAIL_NAME="$2"
JAIL_DIR="$1"

./lib/safe_input.sh $1

echo `hostname` > $JAIL_DIR/$JAIL_NAME.lock

jail -f $JAIL_DIR/$JAIL_NAME/.jail.conf -c jail
