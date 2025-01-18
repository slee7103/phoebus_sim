#!/bin/bash

kill -SIGKILL $(cat $HOME/phoebus/bin/alarmservices.pid)
