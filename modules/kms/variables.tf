variable "name" {
  type    = string
  default = ""

}

variable "alias" {
  type    = string
  default = ""

}

variable "kms_policy" {
  type    = map(string)
  default = {}
}
