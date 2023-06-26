# Root Module Variables
variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "The project name"
  type        = string
  default     = "Project"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# S3 Module Variables
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "Bucket"
}