#!/bin/sh
if [ $# -ne 1 ]; then
	echo "please specify an instance id"
	exit 1
fi
INSTANCEID=$1
aws autoscaling terminate-instance-in-auto-scaling-group --instance-id $INSTANCEID --no-should-decrement-desired-capacity
