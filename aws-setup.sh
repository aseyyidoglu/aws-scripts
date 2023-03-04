#!/bin/sh
"""
Install AWS CLI environment.
Before starting, setup an IAM identity and note your:
- AWS Access Key ID
- AWS Access Secret
"""

echo "Starting..."
echo AWS Access Key ID:
read ACCESS_KEY
echo AWS Access Key Secret:
read ACCESS_SECRET
echo Default Region Name:
read DEFAULT_REGION

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure
AWS Access Key ID [None]: $ACCESS_KEY
AWS Secret Access Key [None]: $ACCESS_SECRET
Default region name [None]: $DEFAULT_REGION
Default output format [None]: json
aws s3 ls
