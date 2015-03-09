#!/bin/sh
if [ $# -ne 2 ]; then
	echo "please specify an autoscaling group name and a package version"
	exit 1
fi
GROUPNAME=$1
VERSION=$2
TAGS="ResourceId=$GROUPNAME,ResourceType=auto-scaling-group,Key=version,Value=$VERSION,PropagateAtLaunch=true"
aws autoscaling create-or-update-tags --tags $TAGS
