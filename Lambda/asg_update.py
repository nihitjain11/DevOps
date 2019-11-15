import boto3
import json

def lambda_handler(event, context):
    client = boto3.client('autoscaling')
    response = client.describe_auto_scaling_groups()
    for r in response['AutoScalingGroups']:
        c = 0
        for i in r['Tags']:
            if i['Key'] in ['owner','purpose']:
                c+=1
        
        asg_name = r['AutoScalingGroupName']

        if c==2:
            print('updating ASG = ',asg_name)
            client.update_auto_scaling_group(
                AutoScalingGroupName=asg_name,
                MinSize=0,
                MaxSize=0,
                DesiredCapacity=0
            )