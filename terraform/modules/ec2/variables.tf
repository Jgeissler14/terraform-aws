variable "tags" {
  description = "A map of tags to be applied to resources"
  type        = map(string)
}
variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
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
