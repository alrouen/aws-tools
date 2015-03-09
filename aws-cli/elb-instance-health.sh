#!/bin/sh
if [ $# -ne 1 ]; then
	echo "please specify an elb name"
	exit 1
fi
ELBNAME=$1
aws elb describe-instance-health --load-balancer-name $ELBNAME
