variable "region" {
  type    = string
  default = "ap-southeast-1"
}
variable "iam_policy_name" {
  type    = string
  default = ""
}

variable "iam_policy" {
  type = string
  default = {}
}

variable "iam_role_name" {
  type    = string
  default = "default"
}

variable "iam_role" {
  type = string
  default = {}
}


variable "profilename" {
  type    = string
  default = "ec2_profile"
}
variable "tags" {
  type = map(string)
  default = {}
}

