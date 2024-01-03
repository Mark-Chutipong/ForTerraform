variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
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

variable "aws_ec2_tags" {
  type    = map(string)
  default = {}
}

variable "aws_ebs_size" {
  type = number
  default = 0
}

variable "aws_ebs_type" {
  type = string
  default = ""
}

variable "aws_ebs_device_name" {
  type = string
  default = ""
}

variable "aws_ebs_kms" {
  type    = string
  default = ""
}

variable "aws_availability_zone" {
  type = string
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
