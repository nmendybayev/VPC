# Configuring the AWS Provider

provider "aws" {
  region = "us-east-1"
}

# Configuring version and remote backend for .tfstate file with dynamodb lock

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "terraform-state-vpc-dev"
    key            = "dev/vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamodb-terraform-state-lock-dev"
    encrypt        = true
  }
}

# Dev root module

module "vpc" {
  source = "../vpc"

  env             = "dev"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.0.0/26"]
  public_subnets  = ["10.0.0.128/26"]

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb"    = 1
    "kubernetes.io/cluster/dev" = "owned"
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb"             = 1
    "kubernetes.io/cluster/dev" = "owned"
  }
}