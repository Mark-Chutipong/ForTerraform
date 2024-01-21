terraform {
  backend "s3" {
    bucket = "s3-tfstate-backend"
    key    = "ec2/test"
    region = "ap-southeast-1"
  }
  backend "s3" {
    bucket = "s3-tfstate-backend2"
    key    = "ec2/test2"
    region = "ap-southeast-1"
  }
}