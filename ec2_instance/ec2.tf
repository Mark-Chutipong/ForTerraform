resource "aws_instance" "example" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.iam_instance_profile
  security_groups      = [var.security_group]
  key_name             = var.key_name
  user_data            = file("ec2_instance/userdata.sh")


 # tags = {
 #   Name = var.tags["name"]
 # }
}