#!/bin/bash

PHOEBUS=$HOME/phoebus
for index in {1..5}
do
	if test $index -eq 1
	then
		cd $PHOEBUS/alarmDB
		xterm -geometry 80x25+10+10 -e "./runSoftIOC.sh;bash" &
		echo $! > .tmp.pid
	elif test $index -eq 2
	then
		cd $PHOEBUS/services/alarm-server
		xterm -geometry 80x25+495+10 -e "./start-alarm-server.sh;bash" &
		echo $! >> .tmp.pid
	elif test $index -eq 3
	then
		cd $PHOEBUS/services/alarm-logger
		xterm -geometry 80x25+980+10 -e "./start-alarm-logger.sh;bash" &
		echo $! >> .tmp.pid
	elif test $index -eq 4
	then
		cd $PHOEBUS/services/alarm-config-logger
		xterm -geometry 80x25+10+390 -e "./start-alarm-config-logger.sh;bash" &
		echo $! >> .tmp.pid
		tr '\n' ' ' < .tmp.pid > alarmservices.pid
	fi
done
