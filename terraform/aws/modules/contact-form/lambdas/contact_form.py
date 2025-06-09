import boto3
from botocore.exceptions import ClientError
import json
import os

client = boto3.client('ses')
sender = os.environ['SENDER_EMAIL']
sendto = os.environ['SENDTO_EMAIL']
configset = os.environ['CONFIG_SET']
domain_name = os.environ['DOMAIN_NAME']
email_subject_prefix = os.environ['EMAIL_SUBJECT_PREFIX']
charset = 'UTF-8'

def lowercase_headers(headers):
    """
    Convert all header keys to lowercase.
    """
    if not headers or not isinstance(headers, dict):
        return {}
    return {k.lower(): v for k, v in headers.items()}

def get_cors_header(headers_dict):
    """
    Extracts the CORS origin from the event headers.
    """
    origin = headers_dict.get('origin')
    if origin and origin.endswith('/'):
        origin = origin.rstrip('/')
    allowed_origins = ["https://www.tighov.link", "https://tighov.link"]

    # Dynamically set CORS origin if allowed
    if origin in allowed_origins:
        cors_origin = origin
    else:
        cors_origin = "https://www.tighov.link"  # fallback or set to None

    return cors_origin

def lambda_handler(event, context):

    headers_dict = lowercase_headers(event.get('headers', {}))
    cors_origin = get_cors_header(headers_dict)

    headers = {
        "Access-Control-Allow-Origin": cors_origin,
        "Access-Control-Allow-Methods": "POST,OPTIONS",
        "Access-Control-Allow-Headers": "Content-Type"
    }

    if event.get('httpMethod', "") == 'POST':
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