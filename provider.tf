terraform {
  required_version = ">= 1.7.0"

  backend "s3" {
    bucket         = "infra-demo-bucket-kavya01"
    key            = "infra/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}