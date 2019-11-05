import boto3

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    response = ec2.create_image(
    InstanceId='i-0c3233714ffcfbffb',
    Name='LambdaAMI'
    )
    print(response['ImageId'])