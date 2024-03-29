# global

aws_region = "ap-southeast-1"

# instance

aws_ec2_ami           = "ami-07d76357cf31e1a1a"
aws_ec2_instance_type = "t4g.small"
aws_ec2_user_data     = "userdata/mark.sh"
aws_ec2_key_name      = "deployer-key2"
aws_ebs_size          = 10
aws_ebs_type          = "gp3"
aws_ebs_device_name   = "/dev/xvdb"
aws_availability_zone = "ap-southeast-1b"
aws_ec2_tags = {
  Name    = "ec2-mark-test2"
  Service = "ec2"
}
aws_ebs_tags = {
  Name    = "ebs-mark-test2"
  Service = "ebs"
}

# iam role

aws_iam_role_name   = "role-mark-test2"
aws_iam_policy_name = "policy-mark-test2"
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

aws_iam_instance_profile_name = "profile-mark-test2"

aws_iam_role_tags = {
  Name    = "role-mark-test2"
  Service = "iam role"
}

aws_iam_policy_tags = {
  Name    = "policy-mark-test2"
  Service = "iam policy"
}

# security group

sg_name        = "seg-mark-test2"
sg_description = "security for EC2"
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
  Name    = "seg-mark-test2"
  Service = "security group"
}

# kms

aws_kms_name   = "default"
aws_kms_alias  = "alias/testalias2"
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
