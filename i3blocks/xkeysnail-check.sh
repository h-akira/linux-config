#!/bin/sh
#
# Created:      Oct, 16, 2022 02:38:17
set -eu

if [ -e "$(which xkeysnail)" ]; then
  PID=`ps --no-heading -C xkeysnail -o pid | tr -d ' '`
  if [ -n "$PID" ]; then
    echo "xkeysnail: ON"
  else
    echo "xkeysnail: OFF"
  fi
else
  echo "xkeysnail: NONE"
fi
