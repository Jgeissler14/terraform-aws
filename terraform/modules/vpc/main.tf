resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  tags                 = var.tags
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.vpc.id
  tags   = var.tags
}

resource "aws_route_table" "vpc_route_table" {
  vpc_id = aws_vpc.vpc.id
  tags   = var.tags
}

resource "aws_route" "vpc_route" {
  route_table_id         = aws_route_table.vpc_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.vpc_igw.id
}

resource "aws_subnet" "vpc_subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr_block
  tags       = var.tags
}

resource "aws_route_table_association" "vpc_route_table_association" {
  subnet_id      = aws_subnet.vpc_subnet.id
  route_table_id = aws_route_table.vpc_route_table.id
}