terraform {
  backend "s3" {
    bucket = "mark-tf-bucket"
    key    = "stage-mark"
    region = "ap-southeast-1"
  }
}