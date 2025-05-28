import json
import boto3
import botocore

def lambda_handler(event, context):
    try:
        response = {
            "boto3": boto3.__version__,
            "botocore": botocore.__version__,
        }
        # This is the happy path
        return response
    except Exception as e:
        exception_type = e.__class__.__name__
        exception_message = str(e)

        api_exception_obj = {
            "isError": True,
            "type": exception_type,
            "message": exception_message
        }
        # Create a JSON string
        api_exception_json = json.dumps(api_exception_obj)
        raise LambdaException(api_exception_json)

# Simple exception wrappers
class ClientException(Exception):
    pass

class LambdaException(Exception):
    pass