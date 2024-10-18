resource "aws_s3_bucket" "this" {
  for_each      = toset(var.s3_bucket_name)#-{random_string.random_number.id}
  bucket        = each.value
  force_destroy = var.force_destroy
}