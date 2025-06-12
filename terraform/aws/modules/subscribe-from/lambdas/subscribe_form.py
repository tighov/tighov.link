import json
import os

domain_name = os.environ['DOMAIN_NAME']

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

    return {
        "statusCode": 200,
        "headers": headers,
        "body": json.dumps({"message": "CORS preflight OK"})
    }