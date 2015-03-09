# aws-tools
misc stuff for aws

### aws-cli :

misc command line scripts to manipulate auto-scaling groups
requirements : [aws cli](http://aws.amazon.com/cli/) & [jq](http://stedolan.github.io/jq/) 

- as-describe-instances.sh : return instances ids that belong to the specified auto-scaling group
- as-describe.sh : return a full description of the specified auto-scaling group
- as-update-tag-version.sh : update the "version" tag of the specified auto-scaling group, with the specified value
- as-suspend-alarm-notification.sh : suspend the "alarm notification" of the specified auto-scaling group
- as-resume-alarm-notification.sh : resume the "alarm notification" of the specified auto-scaling group
- as-set-capacity.sh : change the desired capacity of the specified auto-scaling group
- elb-instance-health.sh : return the list of instance attached to the specified load balancer
- as-terminate-instance-nodecrement.sh : terminate an instance (specified instance id) that belongs to an autoscaling group, but not decrement the desired capactity
- as-terminate-instance-decrement.sh : terminate an instance (specified instance id) that belongs to an autoscaling group and decrement the desired capactity
