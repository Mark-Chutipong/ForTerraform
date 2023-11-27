variable "aws_ami" {
    type = string
    default ="ami-02453f5468b897e31"
}

variable "aws_instance_type" {
    type = string
    default = "t2.micro"
}

variable "aws_tags" {
    type = map(string)
    default = {
      "name" = "Test"
    }
}

variable "role_name" {
    type = string
    default ="test_role"
}

variable "role_version" {
    type = string
    default ="2012-10-17"
}

variable "role_action" {
    type = string
    default ="sts:AssumeRole"
}

variable "role_effect" {
    type = string
    default ="allow"
}

variable "role_sid" {
    type = string
    default =""
}

variable "role_service" {
    type = string
    default ="ec2.amazonaws.com"
}

variable "role_tags" {
    type = map(string)
    default = {
      Name = "Test Role"
    }
}

variable "policy_name" {
    type = string
    default ="test_policy"
}

variable "policy_version" {
    type = string
    default ="2012-10-17"
}

variable "policy_action" {
    type = string
    default ="ec2:Describe*"
}

variable "policy_effect" {
    type = string
    default ="Allow"
}

variable "policy_resource" {
    type = string
    default ="*"
}

variable "sg_name" {
    type = string
    default ="allow_tls"
}

variable "sg_description" {
    type = string
    default ="Allow TLS inbound traffic"
}

variable "sg_vpc_id" {
    type = string
    default ="vpc-0338dc15f3ea40aad"
}

variable "sg_ing_proto" {
    type = string
    default = "tcp"
}

variable "sg_ing_des1" {
    type = string
    default = "TLS from VPC"
}

variable "sg_ing_desssh" {
    type = string
    default = "SSH Access"
}

variable "sg_ing_porttcp" {
    type = number
    default = 443
}

variable "sg_ing_portdocker" {
    type = number
    default = 8080
}

variable "sg_ing_portssh" {
    type = number
    default = 22
}

variable "sg_egr_port" {
    type = number
    default = 0
}

variable "sg_egr_proto" {
    type = string
    default = "-1"
}

variable "sg_cidr_blocks" {
    type = string
    default = "0.0.0.0/0"
}

variable "sg_ipv6_cidr_blocks" {
    type = string
    default = "::/0"
}

variable "sg_tags" {
    type = map(string)
    default = {
      Name = "allow_tls"
    }
}

variable "kms_id" {
    type = string
    default = "exmaple"
}

variable "kms_action" {
    type = string
    default = "kms:*"
}

variable "kms_effect" {
    type = string
    default = "Allow"
}

variable "kms_PrincipalAWS" {
    type = string
    default = "*"
}

variable "kms_resource" {
    type = string
    default = "*"
}

variable "kms_Sid" {
    type = string
    default = "Enable IAM User Permissions"
}

variable "kms_version" {
    type = string
    default = "2012-10-17"
}