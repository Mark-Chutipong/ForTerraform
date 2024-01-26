resource "aws_key_pair" "default" {
  key_name   = var.aws_ec2_key_name
  public_key = var.aws_ec2_public_key
}

