# global

aws_region = "ap-southeast-1"

# instance

aws_ec2_ami           = "ami-0120e0e7231daa18b"
aws_ec2_instance_type = "t2.micro"
#aws_ec2_subnet_id     = "subnet-045807880c4a0c5ad"
aws_ec2_user_data     = "userdata/mark.sh"
aws_ebs_size          = 12
aws_ebs_type          = "gp2"
aws_ebs_device_name   = "/dev/xvdb"
aws_availability_zone = "ap-southeast-1a"
aws_ec2_tags = {
  Name    = "ec2-mark-test1"
  Service = "ec2"
}
aws_ebs_tags = {
  Name    = "ebs-mark-test1"
  Service = "ebs"
}

# iam role

aws_iam_role_name   = "role-mark-test1"
aws_iam_policy_name = "policy-mark-test1"
aws_iam_policy      = <<EOF
{
  "Version" : "2012-10-17",
  "Statement" : [
    {
      "Sid": "AllowS3",
      "Action" : "s3:*",
      "Effect"   : "Allow",
      "Resource" : "*"
    }
  ]
}
EOF

aws_iam_instance_profile_name = "profile-mark-test1"

aws_iam_role_tags = {
  Name    = "role-mark-test1"
  Service = "iam role"
}

aws_iam_policy_tags = {
  Name    = "policy-mark-test1"
  Service = "iam policy"
}

# security group

sg_name        = "seg-mark-test1"
sg_description = "security for EC2"
#sg_vpc_id      = "vpc-02a8ec8c771a6e5b9"
sg_ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
    description = "AllowSSH"
  },
  {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_block  = "0.0.0.0/0"
    description = "AllowDocker"
  }
]
sg_egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_block  = "0.0.0.0/0"
    description = "AllowEgress"
  }
]
sg_tags = {
  Name    = "seg-mark-test1"
  Service = "security group"
}

# kms

aws_kms_name   = "default"
aws_kms_alias  = "alias/testalias"
aws_kms_policy = <<EOF
{
    "Statement" : [
      {
        "Action" : "kms:*",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "*"
        },
        "Resource" : "*",
        "Sid"      : "EnableIAMUserPermissions"
      }
    ]
}
EOF
