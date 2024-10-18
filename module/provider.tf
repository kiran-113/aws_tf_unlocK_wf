terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.2.0"
  }
}
}


# provider "aws" {
#   # Configuration options
#   #region = "us-east1"
#   region = "us-east-1"
# }

provider "aws" {
  # Configuration options
  #region = "us-east1"
  region     = "us-east-1"
}