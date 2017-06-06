#!/bin/sh
readonly subst="$(echo "$@" | envsubst $VARS)"
set -- "$subst"
echo "$@"