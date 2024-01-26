terraform {
   required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }
} 

provider "aws" {
  region                   = var.aws_region
  profile                  = var.aws_profile
  shared_credentials_files = var.aws_shared_credentials_files
}
