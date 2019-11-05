import boto3
import json

def lambda_handler(event, context):
    s3 = boto3.resource('s3')
    bucket = s3.Bucket('terraform-devops-bootcamp')
    for obj in bucket.objects.all():
        print(obj.key)