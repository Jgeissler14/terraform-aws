resource "aws_db_instance" "rds_instance" {
  engine                 = var.rds_engine
  instance_class         = var.rds_instance_class
  allocated_storage      = var.rds_allocated_storage
  identifier             = "${var.prefix}-rds"
  username               = var.rds_username
  password               = var.rds_password
  multi_az               = var.rds_multi_az
  vpc_security_group_ids = var.rds_vpc_security_group_ids

  # Add any other necessary configuration for your RDS instance

  tags = var.tags
}