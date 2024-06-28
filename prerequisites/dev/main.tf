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
  env               = "dev"
  versioning_status = "Disabled"
  read_capacity     = 5
  write_capacity    = 5
}