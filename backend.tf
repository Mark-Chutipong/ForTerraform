terraform {
  backend "s3" {
    bucket = "s3-tfstate"
    key    = "ec2"
    region = "ap-southeast-1"
  }
}