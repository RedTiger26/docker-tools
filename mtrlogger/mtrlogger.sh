#!/bin/bash
mkdir /mtrlogs

while :
do
        echo "Running MTR $1..."
        mtr --report-wide --report-cycles 10 $1 > "/mtrlogs/mtr.$1.$(date +'%Y%m%d-%H%M%S').log"
        sleep 5
done
