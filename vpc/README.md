# Hi!

# This is a simple private network (VPC) with 2 private and 2 public subnets in 'prod' setup and 1 private and 1 public subnets in 'dev' setup. 

In this configuration of Terraform uses an S3 bucket as a remote backend for the .tfstate file and DynamoDB table for locking state to prevent concurrent access to the same .tfstate file from multiple users.

1. Before creating VPC resources you need to create resources from 'prerequisites' folder.

2. Create VPC

## Structure:

.
├── 0-provider.tf
├── 1-vpc.tf
├── 2-igw.tf
├── 3-subnets.tf
├── 4-nat.tf
├── 5-routes.tf
├── 6-outputs.tf
├── 7-variables.tf
├── README.md

Useful links:
https://www.davidc.net/sites/default/subnets/subnets.html