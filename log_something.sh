#!/bin/sh

# we show the date
echo $(date) >> log.txt;

# but we also show the parameters passed to this script
echo $@ >> log.txt; 

# send the log to the stdout
cat log.txt; 
