terraform {
  backend "s3" {
    bucket = "s3-water-test"
    key    = "ec2"
    region = "ap-southeast-1"
  }
}