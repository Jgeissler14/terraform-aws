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