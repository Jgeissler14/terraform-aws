module "s3" {
  source = "../../modules/s3"
  prefix = local.prefix
  tags   = local.tags

  bucket_name = var.bucket_name
}

module "lambda" {
  source = "../../modules/lambda"
  prefix = local.prefix
  tags   = local.tags

  lambda_name    = var.lambda_name
  lambda_handler = var.lambda_handler
  lambda_runtime = var.lambda_runtime
  lambda_memory  = var.lambda_memory
  lambda_timeout = var.lambda_timeout
}

module "ec2" {
  source = "../../modules/ec2"
  tags   = local.tags

  ec2_ami           = var.ec2_ami
  ec2_instance_type = var.ec2_instance_type
  ec2_key_name      = var.ec2_key_name
  ec2_subnet_id     = var.ec2_subnet_id
}

module "rds" {
  source = "../../modules/rds"
  tags   = local.tags
  prefix = local.prefix


  rds_engine                 = var.rds_engine
  rds_instance_class         = var.rds_instance_class
  rds_allocated_storage      = var.rds_allocated_storage
  rds_username               = var.rds_username
  rds_password               = var.rds_password
  rds_multi_az               = var.rds_multi_az
  rds_vpc_security_group_ids = var.rds_vpc_security_group_ids
}
