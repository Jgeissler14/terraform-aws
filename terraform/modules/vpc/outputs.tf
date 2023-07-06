
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.vpc.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.vpc.cidr_block
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.vpc_subnet.id
}

output "subnet_cidr_block" {
  description = "CIDR block of the created subnet"
  value       = aws_subnet.vpc_subnet.cidr_block
}

output "internet_gateway_id" {
  description = "ID of the created internet gateway"
  value       = aws_internet_gateway.vpc_igw.id
}