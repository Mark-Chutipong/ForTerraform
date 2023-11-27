variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "name" {
  type    = string
  default = "test_role"
}

variable "version" {
  type    = string
  default = "2012-10-17"
}

variable "action" {
  type    = string
  default = "sts:AssumeRole"
}

variable "effect" {
  type    = string
  default = "allow"
}

variable "sid" {
  type    = string
  default = ""
}

variable "service" {
  type    = string
  default = "ec2.amazonaws.com"
}

variable "tags" {
  type = map(string)
  default = {
    Name = "Test Role"
  }
}

