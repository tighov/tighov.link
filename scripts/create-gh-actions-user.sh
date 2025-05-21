#!/bin/bash

aws cloudformation create-stack --stack-name gh-actions-user \
  --template-body file://main.yml \
  --parameters ParameterKey=AssetsBucket,ParameterValue=my-assets-bucket \
  ParameterKey=ExternalId,ParameterValue=ExternalID \
  ParameterKey=ProjectName,ParameterValue=MyProject \
  --tags Key=project,Value=MyProject \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM \
  --output yaml \
  --profile default
