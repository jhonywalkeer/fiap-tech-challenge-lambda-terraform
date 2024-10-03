terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "fiap-tech-challenge-terraform-state/lambda"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.0.1"
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}