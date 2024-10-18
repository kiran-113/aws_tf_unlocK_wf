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
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "newtest-14528"
    key    = "network/terraform.tfstate"
    region = "ap-south-1"
  }
}
