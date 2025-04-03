# AWS Resource Tracker

## Overview 
AWS Resource Tracker is a __Bash script__ that monitors AWS resources such as __S3 buckets, EC2 instances, Lambda functions, and IAM users.__ The script retrieves real-time information using AWS CLI and formats the output for easy tracking. A __cron job__ is set up to automate the script execution daily at 20:00 (8:00 PM).

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
![aws_resource_tracker shell file](https://github.com/user-attachments/assets/4519be77-710c-4f58-9245-18e325552f5e)

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
![cron job](https://github.com/user-attachments/assets/d68a41dc-0a6c-4e5c-b37c-5112ef3dd135)


  ## Example Output
![resource output](https://github.com/user-attachments/assets/c1f072be-93ea-4b3c-9e17-8bcffcff87b6)


