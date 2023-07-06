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