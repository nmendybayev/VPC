# Hi. This is a setup for a basic VPC.

## This configuration includes setups for both 'dev' and 'prod' environments, utilizing reusable code created in accordance with Terraform best practices.

This folder contains four subfolders:

- vpc: Contains Terraform resources for deploying the VPC.
- dev: Includes the Terraform dev module and variable values for the development environment.
- prod: Includes the Terraform prod module and variable values for the production environment.
- prerequisites: Contains Terraform resources for deploying an S3 bucket and DynamoDB table to manage the remote backend for the Terraform state file. Deploy them first.

:wink: