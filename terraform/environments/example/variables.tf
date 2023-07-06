# Root Module Variables
variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "example"
}

variable "project" {
  description = "The project name"
  type        = string
  default     = "project"
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
  default     = "bucket"
}

# Lambda Module Variables
variable "lambda_name" {
  description = "Name of the Lambda function"
  type        = string
  default     = "lambda"
}

variable "lambda_handler" {
  description = "Handler function for the Lambda"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "lambda_memory" {
  description = "Memory size for the Lambda function"
  type        = number
  default     = 128
}

variable "lambda_timeout" {
  description = "Timeout for the Lambda function"
  type        = number
  default     = 3
}

# Ec2 Module Variables
variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = null
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_name" {
  description = "Key name for the EC2 instance"
  type        = string
  default     = null
}

variable "ec2_subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
  default     = null
}
