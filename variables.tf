variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "aws_shared_credentials_files" {
  type    = list(string)
  default = ["./credentials/profile"]
}

# instance

variable "aws_ec2_ami" {
  type    = string
  default = "ami-02453f5468b897e31"
}

variable "aws_ec2_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_ec2_user_data" {
  type    = string
  default = ""
}

variable "aws_ec2_key_name" {
  type    = string
  default = ""
}

variable "aws_ec2_public_key" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0Fg8D/pbeFXV5e5kDuqyfkApq2V+8mT28HvGHTIu6YYAG6UZc3QXFrrxtNVr1aEv8CQi3Gx/4Aq0hp2dmUR5wDMYL7hCeqf1XAyTb8d6p9KoKXazv6RgmgaugvzPSjDH+1wdKVEA0upv05o5WNdtizVnkBxGgCN9y5dWqV0UewBjZeM+N3E9ZiOjP5djGqGFEbGLuI62JseDlxmjJywoohsjoWJVB0XdK+stA4NNvWWHv2MR0qHmwx7nxUPu8WojKEcsVhQvII/LY2tFWO1kSaTTYJ6i8Bj5PRYTVBenOOkTosVWh2zN8MbIWuA3KsBvOZwHIWxhMa5Ti6Mweffp9"
}



variable "aws_ec2_tags" {
  type    = map(string)
  default = {}
}

variable "aws_ec2_subnet_id" {
  type    = string
  default = ""
}

variable "aws_ebs_size" {
  type    = number
  default = 0
}

variable "aws_ebs_type" {
  type    = string
  default = ""
}

variable "aws_ebs_device_name" {
  type    = string
  default = ""
}

variable "aws_kms_key_id" {
  type    = string
  default = ""
}

variable "aws_availability_zone" {
  type    = string
  default = ""
}

variable "aws_ebs_tags" {
  type    = map(string)
  default = {}
}

# iam role

variable "aws_iam_policy_name" {
  type    = string
  default = "default"
}

variable "aws_iam_policy" {
  type    = string
  default = ""
}

variable "aws_iam_role_name" {
  type    = string
  default = ""
}

variable "aws_iam_instance_profile_name" {
  type    = string
  default = ""
}

variable "aws_iam_role_tags" {
  type    = map(string)
  default = {}
}

variable "aws_iam_policy_tags" {
  type    = map(string)
  default = {}
}

# security group

variable "sg_name" {
  type    = string
  default = "allow_tls"
}

variable "sg_description" {
  type    = string
  default = "Allow TLS inbound traffic"
}

variable "sg_vpc_id" {
  type    = string
  default = "vpc-0338dc15f3ea40aad"
}

variable "sg_ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = string
    description = string
  }))
  default = []
}

variable "sg_egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = string
    description = string
  }))
  default = []
}

variable "sg_tags" {
  type    = map(string)
  default = {}
}

# kms

variable "aws_kms_name" {
  type    = string
  default = ""

}

variable "aws_kms_alias" {
  type    = string
  default = ""

}

variable "aws_kms_policy" {
  type    = string
  default = ""
}
