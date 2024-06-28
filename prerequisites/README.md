# Creating S3 bucket and DynamoDB

Create an s3 bucket and DynamoDB table before provisioning VPC resources, for state locking and providing a remote backend for the .tfstate file.

Folder:
dev -  contains root module of 'dev' environment 
prod - contains root module of 'prod' environment 
resources - contains Terraform manifest files of s3 bucket and DynamoDB table

To delete s3 bucket with enabled versioning you need delete all objects in the bucket and all its versions, then run 'terraform destroy'.