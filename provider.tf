terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }

  backend "s3" {
    bucket = "hari-remote-state"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "devops-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}