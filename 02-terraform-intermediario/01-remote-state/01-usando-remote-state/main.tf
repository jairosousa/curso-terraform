terraform {
  required_version = ">= 1.1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    backend "s3" {
      bucket = "tfstate-797479231237"
      key = "dev/01-usando-remote-state/terraform.tfstate"
      region = "us-east-1"
      profile = "aprendizado"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "aprendizado"
}