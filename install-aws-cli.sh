#!/bin/sh

echo "Starting..."
echo AWS Access Key ID:
read $access_key
echo AWS Access Key Secret:
read $access_secret
echo Default Region Name:
read $default_region

ACCESS_KEY=$access_key
ACCESS_SECRET=$access_secret
DEFAULT_REGION=$default_region

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws configure
AWS Access Key ID [None]: $ACCESS_KEY
AWS Secret Access Key [None]: $ACCESS_SECRET
Default region name [None]: $DEFAULT_REGION
Default output format [None]: json
aws s3 ls
