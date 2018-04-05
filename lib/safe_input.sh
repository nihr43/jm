#!/bin/sh

JAIL_NAME=$1

case $JAIL_NAME in
        .)
                echo ". off-limits"
                return 1
                ;;
        ..)
                echo ".. off-limits"
                return 1
                ;;
        */*)
                echo "/ off-limits"
                return 1
                ;;
        "")
                echo "empty input off-limits"
                return 1
                ;;
        *" "*)
                echo "space character off-limits"
                return 1
                ;;
esac
