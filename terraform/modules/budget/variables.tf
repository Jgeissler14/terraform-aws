variable "prefix" {
  description = "Object Name Prefix"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}

variable "budget_alarm_name" {
  description = "Name of the budget alarm"
  type        = string
}

variable "budget_evaluation_periods" {
  description = "Number of evaluation periods for the budget alarm"
  type        = number
}

variable "budget_threshold" {
  description = "Threshold value for the budget alarm"
  type        = number
}

variable "budget_alarm_description" {
  description = "Description of the budget alarm"
  type        = string
}

variable "budget_alarm_sns_topic_arn" {
  description = "ARN of the SNS topic to send alarm notifications"
  type        = string
}