variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "name" {
  type    = string
  default = "test_policy"
}

variable "version" {
  type    = string
  default = "2012-10-17"
}

variable "action" {
  type    = string
  default = "ec2:Describe*"
}

variable "effect" {
  type    = string
  default = "Allow"
}

variable "resource" {
  type    = string
  default = "*"
}


