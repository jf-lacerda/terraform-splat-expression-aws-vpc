terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }

  backend "s3" {
    bucket = "joaolacerdaremotestate96"
    key    = "splat-expression/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "joaolacerda"
      manager-by = "terraform"
    }
  }
}