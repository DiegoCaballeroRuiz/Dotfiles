#!/usr/bin/env bash

if pgrep -x "polybar" > /dev/null; then
  killall -q polybar
else
  polybar bar 2>1 | tee -a /tmp/polybar.log &
fi
