#!/bin/bash
red='\033[1;31m'
green='\033[1;32m'
nocolor='\033[0m'
while [ 1 ]; do
	current_time="`date +%H:%M:%S`"
	ping -c 1 www.google.com &> /dev/null && echo -e "[${green}  OK  ${nocolor}] The Internet is up. Time: $current_time" || echo -e "[${red}FAILED${nocolor}] The Internet is down. Time:  $current_time"
	sleep 120
done
