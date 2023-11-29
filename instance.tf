module "ec2_instance" {
  source        = "./ec2_instance"
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  iam_instance_profile = var.aws_ec2_iam_instance_profile
  security_group = var.aws_ec2_security_group
  key_name = var.aws_ec2_key_name
  #tags          = var.aws_ec2_tags
}

module "iam_role" {
  source          = "./iam_role"
  iam_policy_name = var.aws_iam_policy_name
  iam_policy      = var.aws_iam_policy
  iam_role_name   = var.aws_iam_role_name
  iam_role        = var.aws_iam_role
}



module "security_group" {
  source           = "./security_group"
  name             = var.sg_name
  description      = var.sg_description
  vpc_id           = var.sg_vpc_id
  ing_proto        = var.sg_ing_proto
  ing_des1         = var.sg_ing_des1
  ing_desssh       = var.sg_ing_desssh
  ing_porttcp      = var.sg_ing_porttcp
  ing_portdocker   = var.sg_ing_portdocker
  ing_portssh      = var.sg_ing_portssh
  egr_port         = var.sg_egr_port
  egr_proto        = var.sg_egr_proto
  cidr_blocks      = var.sg_cidr_blocks
  ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks
}

#module "kms" {
#  source     = "./kms"
#  name       = var.aws_kms_name
#  alias      = var.aws_kms_alias
#  kms_policy = var.aws_kms_policy
#}