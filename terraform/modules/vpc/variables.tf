variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_enable_dns_hostnames" {
  description = "Enable DNS hostnames for the VPC"
  type        = bool
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}