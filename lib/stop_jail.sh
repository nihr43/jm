#!/bin/sh

set -e
JAIL_NAME="$1"

./lib/safe_input.sh $1

service jail stop $JAIL_NAME
