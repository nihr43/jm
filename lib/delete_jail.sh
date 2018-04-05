#!/bin/sh

set -e
JM_DIR=$1
JAIL_NAME=$2

./lib/safe_input.sh $2

if [ ! -e $JM_DIR/$JAIL_NAME ]; then
        echo "$JAIL_NAME does not exist"
        exit
fi


echo "deleting $JAIL_NAME"

chflags -R noschg $JM_DIR/$JAIL_NAME
rm -rf $JM_DIR/$JAIL_NAME
