variable "name" {
  type    = string
  default = ""
}

variable "description" {
  type    = string
  default = "Security group"
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = string
    description = string
  }))
  default = []
}

variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_block  = string
    description = string
  }))
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}