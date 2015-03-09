#!/bin/sh
if [ $# -ne 1 ]; then
	echo "please specify an autoscaling group name"
	exit 1
fi
GROUPNAME=$1
aws autoscaling describe-auto-scaling-groups | jq --arg group $GROUPNAME '.AutoScalingGroups[] | select(.AutoScalingGroupName == $group)'
