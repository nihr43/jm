#!/bin/sh

set -e
JAIL_NAME="$2"
JAIL_DIR="$1"

./lib/safe_input.sh $1

jail -f $JAIL_DIR/$JAIL_NAME/.jail.conf -r jail

rm $JAIL_DIR/$JAIL_NAME.lock
