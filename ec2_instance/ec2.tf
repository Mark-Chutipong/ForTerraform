resource "aws_instance" "example" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = "ec2_profile"
  security_groups      = "allow_tls"
  key_name             = "deployer-key"
  user_data            = file("ec2_instance/userdata.sh")


  tags = {
    Name = var.tags["name"]
  }
}