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

variable "lambda_function_path" {
  description = "Path to the Lambda function source code file"
  type        = string
  default     = "./src/lambda_function.zip"
}

# EC2 Module Variables
variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-06ca3ca175f37dd66"
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


# RDS Module Variables
variable "rds_engine" {
  description = "Database engine for the RDS instance"
  type        = string
  default     = "mysql"
}

variable "rds_instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "rds_allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
  default     = 20
}

variable "rds_username" {
  description = "Username for the RDS instance"
  type        = string
  default     = "rds_user"
}

variable "rds_password" {
  description = "Password for the RDS instance"
  type        = string
  default     = "rds_password"
}

variable "rds_multi_az" {
  description = "Enable multi-AZ deployment for the RDS instance"
  type        = bool
  default     = false
}

variable "rds_vpc_security_group_ids" {
  description = "List of VPC security group IDs for the RDS instance"
  type        = list(string)
  default     = []
}

# VPC Module Variables
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
  type        = bool
  default     = true
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

# Budget Module Variables
variable "budget_alarm_name" {
  description = "Name of the budget alarm"
  type        = string
  default     = "MonthlyBudgetAlarm" # Provide the default budget alarm name here
}

variable "budget_evaluation_periods" {
  description = "Number of evaluation periods for the budget alarm"
  type        = number
  default     = 1 # Provide the default number of evaluation periods here
}

variable "budget_threshold" {
  description = "Threshold value for the budget alarm"
  type        = number
  default     = 100 # Provide the default threshold value here
}

variable "budget_alarm_description" {
  description = "Description of the budget alarm"
  type        = string
  default     = "Monthly budget exceeded" # Provide the default budget alarm description here
}

variable "budget_alarm_sns_topic_arn" {
  description = "ARN of the SNS topic to send alarm notifications"
  type        = string
  default     = "arn:aws:sns:us-east-1:285824578675:MyTopic" # Provide the default SNS topic ARN here
}