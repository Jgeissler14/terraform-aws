resource "aws_s3_bucket" "bucket" {
  bucket = "${var.prefix}-${var.bucket_name}"

  tags = var.tags
}