#!/bin/sh
if [ $# -ne 1 ]; then
	echo "please specify an autoscaling group name"
	exit 1
fi
GROUPNAME=$1
aws autoscaling suspend-processes --auto-scaling-group-name $GROUPNAME --scaling-processes AlarmNotification
