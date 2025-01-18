terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "devopstraining-prod-state"
    key    = "catalogue"
    region = "us-east-1"
    dynamodb_table = "devopstraining-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}