#!/bin/bash
ip=$(ifconfig wlan0 | grep "inet " | awk -F'[: ]+' '{ print $3 }')
mosquitto_pub -t "pi/Supreeth/ip" -h "broker.hivemq.com" -m "$ip"
