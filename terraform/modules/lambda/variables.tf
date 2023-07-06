variable "prefix" {
  description = "Object Name Prefix"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}

variable "lambda_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_handler" {
  description = "Handler function for the Lambda"
  type        = string
}

variable "lambda_runtime" {
  description = "Runtime for the Lambda function"
  type        = string
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
