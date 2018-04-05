#!/bin/sh

JM_DIR=$1
JAIL_NAME=$2


if [ ! -e $JM_DIR/$JAIL_NAME ]; then
        echo "$JAIL_NAME does not exist"
        exit
fi

if [ $JM_DIR/$JAIL_NAME = "$JM_DIR/." ]; then
        echo "cannot delete jm directory"
        exit
fi

echo "deleting $JAIL_NAME"

chflags -R noschg $JM_DIR/$JAIL_NAME
rm -rf $JM_DIR/$JAIL_NAME
