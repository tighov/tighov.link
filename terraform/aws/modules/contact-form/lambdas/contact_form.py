import boto3
from botocore.exceptions import ClientError
import json
import os

client = boto3.client('ses')
sender = os.environ['SENDER_EMAIL']
sendto = os.environ['SENDTO_EMAIL']
configset = os.environ['CONFIG_SET']
domain_name = os.environ['DOMAIN_NAME']
charset = 'UTF-8'
email_subject_prefix = os.environ['EMAIL_SUBJECT_PREFIX']


def lambda_handler(event, context):

    origin = event['headers'].get('origin')
    allowed_origins = ["https://www." + domain_name, "https://" + domain_name]
    if origin in allowed_origins:
        cors_origin = origin
    else:
        cors_origin = "https://www." + domain_name  # fallback

    headers = {
        "Access-Control-Allow-Origin": cors_origin,
        "Access-Control-Allow-Methods": "POST,OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type"
    }

    if event['httpMethod'] == 'POST':
        return sendMail(event, context, headers)
    else:
        return {
            "statusCode": 405,
            "headers": headers,
            "body": json.dumps("Method Not Allowed")
        }

def sendMail(event, context, headers):
    try:
        data = event['body']
        data = json.loads(data)
        name = data['name']
        email = data['email']
        message = data['message']
        subject = data['subject']

        emailsbj = email_subject_prefix + ' -- ' + subject
        content = emailsbj + \
                  ',\n\r' + \
                  '\n\rMessage from: ' + name + \
                  '\n\rEmail: ' + email + '\n\r' \
                  + message
       
        response = sendMailToUser(data, emailsbj, content)
    except ClientError as e:
        print(e.response['Error']['Message'])
        return {
            "statusCode": 501,
            "headers": headers,
            "body": json.dumps({"error": e.response['Error']['Message']})
        }
    else:
        print("Email sent! Message Id:"),
        print(response['MessageId'])
    return {
        "statusCode": 200,
        "headers": headers,
        "body": json.dumps({"message": "OK"})
    }


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