import boto3

def lambda_handler(event, context):
    sns = boto3.client('sns')
    topic_arn = 'arn:aws:sns:us-east-1:123456789012:mytopic'
    message = 'Automated notification: task completed'
    sns.publish(TopicArn=topic_arn, Message=message)
    return {'statusCode': 200, 'body': 'notified'}
