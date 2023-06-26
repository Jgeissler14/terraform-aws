module "s3" {
  source = "../../modules/s3"
  prefix = local.prefix
  tags   = local.tags

  bucket_name = var.bucket_name
}