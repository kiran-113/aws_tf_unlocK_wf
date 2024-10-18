module "s3_bucket" {
  source         = "./module"
  s3_bucket_name = ["one-52475"]
  force_destroy  = true
}

module "s3_bucket_de" {
  source         = "./module"
  s3_bucket_name = ["one-52485"]
  force_destroy  = false
}

module "s3_bucket_de23" {
  source         = "./module"
  s3_bucket_name = ["one-52485kjlk", "bhjdbscb543"]
  force_destroy  = false
}

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "5.13.0"
#   cidr = "20.0.0.0/16"
# }

# module "s3-bucket" {
#   count = 3
#   source  = "terraform-aws-modules/s3-bucket/aws"
#   version = "4.2.1"
# }