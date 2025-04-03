# AWS Resource Tracker

## Overview 
AWS Resource Tracker is a Bash script that monitors AWS resources such as S3 buckets, EC2 instances, Lambda functions, and IAM users. The script retrieves real-time information using AWS CLI and formats the output for easy tracking. A cron job is set up to automate the script execution daily at 20:00 (8:00 PM).

## Features
* __List all S3 buckets__ available in the AWS account 
* __Retrieve EC2 instance IDs__ using AWS CLI and filter results with jq
* __List AWS Lambda functions__ currently deployed
* __Fetch IAM users__ in the AWS account
* __Automated execution__ via ron job for daily monitoring

## Usage
1. __Prerequisites:__
    * Install AWS CLI and configure credentials.
    * Install jq for JSON processing.

2. __Run the bash script manually:__
```
chmod +x aws_resource_tracker.sh
./aws_resource_tracker.sh | more
```

3. __Schedule with cron job:__
* Open the cron tab editor:
```
crontab -e
```
* Add the following entry to run the script daily at 20:00 (8:00 PM):
```
0 20 * * * /home/ubuntu/aws_resource_tracker.sh
```

  ## Example Output
  ```
print list of s3 buckets
my-bucket-123
my-second-bucket

print list of ec2 instances
i-03d83dde0ac040ca0

print list of lambda functions
{
  "Functions": []
}

print list of iam users
{
  "Users": []
}
```

