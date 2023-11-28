aws_region          = "ap-southeast"
aws_ami             = "ami-02453f5468b897e31"
aws_instance_type   = "t2.micro"
aws_ec2_tags        = "Test"
aws_iam_policy_name = "default"
aws_iam_policy = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Action = [
        "ec2:Describe*",
      ]
      Effect   = "Allow"
      Resource = "*"
    },
  ]
})
aws_iam_role_name = "default"
aws_iam_role = jsonencode({
  Version = "2012-10-17"
  Statement = [
    {
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Sid    = ""
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    },
  ]
})
aws_profilename = "ec2_profile"
aws_iam_tags = {
  RoleName   = "Default"
  PolicyName = "Default"
}
sg_name             = "allow_tls"
sg_description      = "Allow TLS inbound traffic"
sg_vpc_id           = "vpc-0338dc15f3ea40aad"
sg_ing_proto        = "tcp"
sg_ing_des1         = "TLS from VPC"
sg_ing_desssh       = "SSH Access"
sg_ing_porttcp      = 443
sg_ing_portdocker   = 8080
sg_ing_portssh      = 22
sg_egr_port         = 0
sg_egr_proto        = "-1"
sg_cidr_blocks      = "0.0.0.0/0"
sg_ipv6_cidr_blocks = "::/0"
sg_tags             = "allow_tls"
aws_kms_name        = "default"
aws_kms_alias       = "alias/testalias"
aws_kms_policy = jsonencode({
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
    },
  ]
  Version = "2012-10-17"
})