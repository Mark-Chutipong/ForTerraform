variable "region" {
    type = string
    default ="ap-southeast-1"
}

variable "id" {
    type = string
    default = "exmaple"
}

variable "action" {
    type = string
    default = "kms:*"
}

variable "effect" {
    type = string
    default = "Allow"
}

variable "PrincipalAWS" {
    type = string
    default = "*"
}

variable "resource" {
    type = string
    default = "*"
}

variable "Sid" {
    type = string
    default = "Enable IAM User Permissions"
}

variable "version" {
    type = string
    default = "2012-10-17"
}