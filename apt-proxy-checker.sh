#!/bin/bash

export ADDR=192.168.1.2
export PORT=3142

if nc -w1 -z $ADDR $PORT; then
	echo http://${ADDR}:${PORT}
else
	echo DIRECT
fi
