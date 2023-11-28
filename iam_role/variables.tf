variable "region" {
  type    = string
  default = "ap-southeast-1"
}
variable "iam_policy_name" {
  type    = string
  default = "default"
}

variable "iam_policy" {
  type = string
  default = ({
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
  })
}

variable "iam_role_name" {
  type    = string
  default = "default"
}

variable "iam_role" {
  type = string
  default = ({
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
  })
}


variable "profilename" {
  type    = string
  default = "ec2_profile"
}
variable "tags" {
  type = map(string)
  default = {
    RoleName   = "Default"
    PolicyName = "Default"
  }
}

