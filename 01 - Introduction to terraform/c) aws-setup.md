### How to configure AWS credentials on your system

#### Step 1: Pre-requisite 
- You must have an AWS Account.
  [Create an AWS Account](https://portal.aws.amazon.com/billing/signup?nc2=h_ct&src=header_signup&redirect_url=https%3A%2F%2Faws.amazon.com%2Fregistration-confirmation#/start)

- If your terraform server is in the cloud, then create a role and attach the role to your server.

- Generate Security Credentials using AWS Management Console
  ```
  Go to Services -> IAM -> Users -> "Your-Admin-User" -> Security Credentials -> Create Access Key
  ```
- Configure AWS credentials using SSH Terminal on your local desktop

#### Step 2: Configure AWS Credentials in command line
```
$ aws configure

# Verify if we are able list S3 buckets
aws s3 ls
```
- Verify the AWS Credentials Profile
```
cat $HOME/.aws/credentials
```
#### Command to reset your AWS credentials incase of a credentials error

