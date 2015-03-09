#!/bin/sh
if [ $# -ne 2 ]; then
	echo "please specify an autoscaling group name and a desired capacity"
	exit 1
fi
GROUPNAME=$1
CAPACITY=$2
aws autoscaling set-desired-capacity --auto-scaling-group-name $GROUPNAME --desired-capacity $CAPACITY
