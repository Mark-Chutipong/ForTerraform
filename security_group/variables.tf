variable "region" {
  type    = string
  default = "ap-southeast-1"
}

variable "name" {
  type    = string
  default = "allow_tls"
}

variable "description" {
  type    = string
  default = "Allow TLS inbound traffic"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0338dc15f3ea40aad"
}

variable "ing_proto" {
  type    = string
  default = "tcp"
}

variable "ing_des1" {
  type    = string
  default = "TLS from VPC"
}

variable "ing_desssh" {
  type    = string
  default = "SSH Access"
}

variable "ing_porttcp" {
  type    = number
  default = 443
}

variable "ing_portdocker" {
  type    = number
  default = 8080
}

variable "ing_portssh" {
  type    = number
  default = 22
}

variable "egr_port" {
  type    = number
  default = 0
}

variable "egr_proto" {
  type    = string
  default = "-1"
}

variable "cidr_blocks" {
  type    = string
  default = "0.0.0.0/0"
}

variable "ipv6_cidr_blocks" {
  type    = string
  default = "::/0"
}

variable "tags" {
  type = map(string)
  default = {
    Name = "allow_tls"
  }
}