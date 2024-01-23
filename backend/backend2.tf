terraform {
  backend "s3" {
    bucket = "s3-tfstate-backend"
    key    = "test2"
    region = "ap-southeast-1"
  }
}