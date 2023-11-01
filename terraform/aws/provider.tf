terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.23"
    }
  }
  backend "s3" {
    bucket         = "baldecp3"
    key            = "terraform.tfstate"
    dynamodb_table = "tabelacp3"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}