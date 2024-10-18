terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.2.0"
    }
  }
}



provider "aws" {
  # Configuration options
  #region = "us-east1"
  region     = "ap-south-1"
}

# terraform {
#   backend "s3" {
#     bucket = "newtest-14528"
#     key    = "network/terraform.tfstate"
#     region = "ap-south-1"
#   }
# }

terraform {
  backend "s3" {
    bucket         = "newtest-14528"             # S3 bucket name
    key            = "network/terraform.tfstate" # Path to store the state file
    region         = "ap-south-1"                # AWS region
    dynamodb_table = "cvs-tf-environment"        # DynamoDB table for state locking

    }
}

