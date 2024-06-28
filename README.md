# Hi. This is a setup for a basic VPC.

## This configuration includes setups for both 'dev' and 'prod' environments, utilizing reusable code created in accordance with Terraform best practices.

This folder contains four subfolders:

vpc: Contains Terraform resources for deploying the VPC.
dev: Includes the Terraform dev module and variable values for the development environment.
prod: Includes the Terraform prod module and variable values for the production environment.
prerequisites: Contains Terraform resources for deploying an S3 bucket and DynamoDB table to manage the remote backend for the Terraform state file. Deploy them first.

:wink:

PS: This is file structure: 
.
├── README.md
├── dev
│   ├── main.tf
│   └── outputs.tf
├── prerequisites
│   ├── README.md
│   ├── dev
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── terraform.tfstate
│   ├── prod
│   │   ├── main.tf
│   │   └── outputs.tf
│   └── resources
│       ├── 0-provider.tf
│       ├── 1-s3.tf
│       ├── 2-dynamo.tf
│       ├── 3-variables.tf
│       └── 4-output.tf
├── prod
│   ├── main.tf
│   └── outputs.tf
└── vpc
    ├── 0-provider.tf
    ├── 1-vpc.tf
    ├── 2-igw.tf
    ├── 3-subnets.tf
    ├── 4-nat.tf
    ├── 5-routes.tf
    ├── 6-outputs.tf
    ├── 7-variables.tf
    └── README.md