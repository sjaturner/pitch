#!/bin/bash

DIR=$(dirname $(readlink -f "$0"))
line=$(shuf $DIR/notes | head -1)
speaker-test -t sine -f $(echo $line | cut -d' ' -f1) -s1 > /dev/null
read guess
echo $(date +%s) $guess $line >> $DIR/guess
echo $line
