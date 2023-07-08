variable "prefix" {
  description = "Object Name Prefix"
  type        = string
}

variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}

variable "rds_engine" {
  description = "Database engine for the RDS instance"
  type        = string
}

variable "rds_instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
}

variable "rds_allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
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
}

variable "rds_vpc_security_group_ids" {
  description = "List of VPC security group IDs for the RDS instance"
  type        = list(string)
}