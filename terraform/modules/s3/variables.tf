variable "prefix" {
  description = "Object Name Prefix"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}