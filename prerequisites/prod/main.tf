# Configuring the AWS Provider

provider "aws" {
  region = "us-east-1"
}

# Configuring version and remote backend for .tfstate file with dynamodb lock

terraform {
  required_version = ">= 1.0"

  backend "local" {
    path = "terraform.tfstate"
  }
}

# Root module

module "prerequisites" {
  source            = "../resources"
  env               = "prod"
  versioning_status = "Enabled"
  read_capacity     = 20
  write_capacity    = 20
}