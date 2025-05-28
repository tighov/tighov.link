import boto3
from botocore.exceptions import ClientError
import json
import os
import time
import uuid
import decimal
import base64

client = boto3.client('ses')
sender = os.environ['SENDER_EMAIL']
sendto = os.environ['SENDTO_EMAIL']
configset = os.environ['CONFIG_SET']
charset = 'UTF-8'
allow_origins_headers = {
                "Access-Control-Allow-Origin": "https://www.tighov.link",
                "Access-Control-Allow-Methods": "POST,OPTIONS",
                "Access-Control-Allow-Headers": "Content-Type"
            }

dynamodb = boto3.resource('dynamodb')

def lambda_handler(event, context):
    if event['httpMethod'] == 'POST':
        return sendMail(event, context)
    else:
        return {
            "statusCode": 405,
            "headers": allow_origins_headers,
            "body": json.dumps("Method Not Allowed")
        }

def sendMail(event, context):
    try:
        data = event['body']
        name = data['name']
        email = data['email']
        message = data['message']
        subject = data['subject']
        table_name = base64.b64decode(data['key']).decode()

        emailsbj = table_name + ' -- ' + subject
        content = emailsbj + \
                  ',\n\r' + \
                  '\n\rMessage from: ' + name + \
                  '\n\rEmail: ' + email + '\n\r' \
                  + message
       
        table = dynamodb.Table(table_name)
        saveToDynamoDB(data, table)
        response = sendMailToUser(data, emailsbj, content)
    except ClientError as e:
        print(e.response['Error']['Message'])
        return {
            "statusCode": 501,
            "headers": allow_origins_headers,
            "body": json.dumps({"error": e.response['Error']['Message']})
        }
    else:
        print("Email sent! Message Id:"),
        print(response['MessageId'])
    return {
        "statusCode": 200,
        "headers": allow_origins_headers,
        "body": json.dumps({"message": "OK"})
    }

def list(event, context):
    table = dynamodb.Table(os.environ['DYNAMODB_TABLE'])

    # fetch all records from database
    result = table.scan()

    #return response
    return {
        "statusCode": 200,
        "headers": allow_origins_headers,
        "body": json.dumps(result['Items'])
    }

def saveToDynamoDB(data, table):
    timestamp = int(time.time() * 1000)
    # Insert details into DynamoDB Table
    item = {
        'id': str(uuid.uuid1()),
        'name': data['name'],
        'subject': data['subject'],
        'email': data['email'],
        'message': data['message'],
        'createdAt': timestamp,
        'updatedAt': timestamp
    }
    table.put_item(Item=item)
    return

def sendMailToUser(data, subject, content):
    # Send Email using SES
    return client.send_email(
        Source=sender,
        Destination={
            'ToAddresses': [
                sendto,
            ],
        },
        Message={
            'Subject': {
                'Charset': charset,
                'Data': subject
            },
            'Body': {
                'Html': {
                    'Charset': charset,
                    'Data': content
                },
                'Text': {
                    'Charset': charset,
                    'Data': content
                }
            }
        }
    )