variable "s3_bucket_name" {
    description = "Names of the s3 buckets"
    type = list(string)
    default = [ "sjdskjn-313" ]

}

variable "force_destroy" {
    type = bool

}