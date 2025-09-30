import json
import boto3
import os

def lambda_handler(event, context):
    print('Received S3 event:', json.dumps(event))
    # Example: parse S3 object key and write metadata to RDS (pseudo-code)
    try:
        for rec in event.get('Records', []):
            s3_info = rec.get('s3', {})
            bucket = s3_info.get('bucket', {}).get('name')
            key = s3_info.get('object', {}).get('key')
            # here you'd call RDS Data API or a DB connection to insert metadata
            print(f'Process object {key} from bucket {bucket} and update RDS')
    except Exception as e:
        print('Error:', str(e))
        raise
    return {'statusCode': 200, 'body': 'processed'}
