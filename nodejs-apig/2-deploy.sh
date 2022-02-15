#!/bin/bash

BUCKET_NAME=lambda-artifacts-vk-testing
aws s3 mb s3://$BUCKET_NAME

aws cloudformation package --template-file template.yml --s3-bucket $ARTIFACT_BUCKET --output-template-file out.yml
aws cloudformation deploy --template-file out.yml --stack-name nodejs-apig --capabilities CAPABILITY_NAMED_IAM
