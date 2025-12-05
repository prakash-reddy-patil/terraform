terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket         = "remote-state-ppr"
    key            = "remote-state-demo"
    region         = "us-east-1"
    use_lockfile = true # it locks and others cannot apply changes. once it releases lock others can apply changes 
    encrypt        = true # It means the data will be stored in encrypted (safe/locked) form
  }
}


provider "aws" {
  region = "us-east-1"
  # Configuration options
}

# backend=s3 storage