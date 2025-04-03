#!/bin/bash
###############################################
# Author: Gagani
# This script will report AWS resource usage
# AWS S3
# AWS EC2
# AWS LAMBDA
AWS IAM Users
##################################################

# to run in debug mode
set -x

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

#list ec2 instances
echo "print list ec2 instances"
aws ec2 describe-instances | jq '.Resevations[].Instances[].InstanceId'

#list aws lambda functions
echo "print list aws lambda functions"
aws lambda list-functions

#list aws IAM users
echo "print list aws IAM users"
aws iam list-users
