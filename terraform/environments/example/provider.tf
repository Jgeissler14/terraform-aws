terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }

  # cloud {
  #     organization = "YOUR-ORGANIZATION"
  #     workspaces {
  #         name = "YOUR-WORKSPACE"
  #     }
  # }
}

provider "aws" {
  region = var.region
}