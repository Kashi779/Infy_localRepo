#!/bin/bash 

#################
# Auther: Kashi G
# Date : 15-12
#
# Version: v1
# This script will report the aws resource usage
###################

set -x 


# AWS S3
# AWS EC3
# AWS LAMBDA
# AWS IAM Users
#
# LIST EC2  Instances
aws ec2 describe-instances
echo "print list of ec2 instances" > resourceTracker
aws ec2 describe-instances | grep InstanceId 

# list s3 buckets
aws s3 ls > resourceTracker
echo "print list of s3 buckets" 

# list lambda
aws lambda list-functions  > resourceTracker
echo "print list of lambda"


# list IAM Users
aws iam-users  
