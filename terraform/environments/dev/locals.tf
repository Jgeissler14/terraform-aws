locals {
  tags = {
    Environment = var.environment
    Project     = var.project
  }

  prefix = "${var.project}-${var.environment}"
}