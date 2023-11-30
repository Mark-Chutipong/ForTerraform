resource "aws_instance" "default" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.iam_instance_profile
  security_groups      = var.security_groups
  key_name             = var.key_name
  user_data            = var.user_data
  tags                 = var.tags
}