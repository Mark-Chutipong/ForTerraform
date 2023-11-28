variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "name" {
  type    = string
  default = "default"

}

variable "alias" {
  type    = string
  default = "alias/testalias"

}

variable "kms_policy" {
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
      }
    ]
    Version = "2012-10-17"
  }
  EOF
}
