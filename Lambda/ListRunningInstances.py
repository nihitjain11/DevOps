import boto3
import json

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    response = ec2.describe_instances(
    Filters=[
        {
            'Name': 'instance-state-name',
            'Values': [
                'running',
            ]
        },
    ])
    for r in response['Reservations']:
        for i in r['Instances']:
            print (i['InstanceId'])