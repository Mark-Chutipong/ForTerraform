variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

variable "aws_ami" {
  type    = string
  default = "ami-02453f5468b897e31"
}

variable "aws_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_ec2_iam_instance_profile" {
  type = string
  default = "ec2_profile"
}

variable "aws_ec2_security_group" {
  type = string
  default = "allow_tls"
}

variable "aws_ec2_key_name" {
  type = string
  default = "deployer-key"
}

variable "aws_ec2_tags" {
  type = map(string)
  default = {
    "name" = "Test"
  }
}

variable "aws_iam_policy_name" {
  type    = string
  default = "default"
}

variable "aws_iam_policy" {
  type = string
  default = <<-EOF
  {
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  }
  EOF
}

variable "aws_iam_role_name" {
  type    = string
  default = "default"
}

variable "aws_iam_role" {
  type = string
  default = <<-EOF
  {
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  }
  EOF
}


variable "aws_profilename" {
  type    = string
  default = "ec2_profile"
}
variable "aws_iam_tags" {
  type = map(string)
  default = {
    RoleName   = "Default"
    PolicyName = "Default"
  }
}

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

variable "sg_ing_proto" {
  type    = string
  default = "tcp"
}

variable "sg_ing_des1" {
  type    = string
  default = "TLS from VPC"
}

variable "sg_ing_desssh" {
  type    = string
  default = "SSH Access"
}

variable "sg_ing_porttcp" {
  type    = number
  default = 443
}

variable "sg_ing_portdocker" {
  type    = number
  default = 8080
}

variable "sg_ing_portssh" {
  type    = number
  default = 22
}

variable "sg_egr_port" {
  type    = number
  default = 0
}

variable "sg_egr_proto" {
  type    = string
  default = "-1"
}

variable "sg_cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}

variable "sg_ipv6_cidr_blocks" {
  type    = string
  default = "::/0"
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "allow_tls"
  }
}

variable "aws_kms_name" {
  type    = string
  default = "default"

}

variable "aws_kms_alias" {
  type    = string
  default = "alias/testalias"

}

variable "aws_kms_policy" {
  type = string
  default = <<-EOF
{
    Id = "default"
    Statement = [
      {
        Action = "kms:*"
        Effect = "Allow"
        Principal = {
          AWS = "*"
        }

        Resource = "*"
        Sid      = "Enable IAM User Permissions"
      },
    ]
    Version = "2012-10-17"
}
EOF
}