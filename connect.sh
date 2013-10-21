#!/bin/bash

NEXT_WAIT_TIME=0
COMMAND="socat -d -d -d -d -b57600 FILE:/dev/tty.Sphero-$1-AMP-SPP,nonblock,raw,echo=0 TCP-LISTEN:$2,fork"
until $COMMAND || [ $NEXT_WAIT_TIME -eq 4 ]; do
  echo "retry..."
  sleep $(( NEXT_WAIT_TIME++ ))
done