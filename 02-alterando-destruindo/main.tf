terraform {
  required_version = ">= 1.1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region  = "us-east-1"
  profile = "aprendizado"
}

resource "aws_s3_bucket" "jns-test-bucket" {
  bucket = "jns-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket jns"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Jairo Nascimento"
    UpdatedAt   = "2022/02/24"
  }
}