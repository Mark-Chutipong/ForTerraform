variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "ami" {
  type    = string
  default = "ami-02453f5468b897e31"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "iam_instance_profile" {
  type = string
  default = "ec2_profile"
}

variable "security_group" {
  type = string
  default = "allow_tls"
}

variable "key_name" {
  type = string
  default = "deployer-key"
}

variable "tags" {
  type = map(string)
  default = {
    "name" = "Test"
  }
}