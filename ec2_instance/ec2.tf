resource "aws_instance" "example" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = [aws_iam_instance_profile.ec2_profile.name]
  security_groups      = [aws_security_group.allow_tls.name]
  key_name             = [aws_key_pair.deployer.key_name]
  user_data            = file("ec2_instance/userdata.sh")


  tags = {
    Name = [var.Name[0]]
  }
}