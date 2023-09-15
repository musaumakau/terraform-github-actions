terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1" # define region as per your account
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "demo-makau-gihub"

  object_lock_enabled = false

  tags = {
    Environment = "Prod"
  }
}