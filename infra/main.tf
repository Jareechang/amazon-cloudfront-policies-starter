# Infrastructure definitions

provider "aws" {
  version = "~> 4.24.0"
  region  = var.aws_region
}

# Local vars
locals {
  default_lambda_timeout = 10

  default_lambda_log_retention = 1

  min_ttl = 0
  max_ttl = 86400
  default_ttl = 3600
}

resource "aws_s3_bucket" "lambda_bucket" {
  bucket        = "lambda-bucket-assets-1234567"
  acl           = "private"
}

module "lambda_origin" {
  source               = "./modules/lambda"
  code_src             = "../functions/default/main.zip"
  bucket_id            = aws_s3_bucket.lambda_bucket.id
  timeout              = local.default_lambda_timeout
  function_name        = "default-function"
  runtime              = "nodejs14.x"
  handler              = "dist/index.handler"
  publish              = true
  alias_name           = "ingestion-dev"
  alias_description    = "Alias for default function"
  environment_vars = {
    DefaultRegion   = var.aws_region
  }
}
