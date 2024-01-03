module "ec2_instance" {
  source               = "./modules/ec2_instance"
  ami                  = var.aws_ec2_ami
  instance_type        = var.aws_ec2_instance_type
  iam_instance_profile = var.aws_iam_instance_profile_name#module.iam_role.name
  security_groups      = [var.sg_name]#module.security_group.name
  key_name             = aws_key_pair.default.key_name
  user_data            = file("${var.aws_ec2_user_data}")
  ebs_size             = var.aws_ebs_size
  ebs_type             = var.aws_ebs_type
  availability_zone    = var.aws_availability_zone
  device_name          = var.aws_ebs_device_name
  kms                  = var.aws_ebs_kms
  ec2_tags             = var.aws_ec2_tags
  ebs_tags             = var.aws_ebs_tags
}

module "iam_role" {
  source                    = "./modules/iam_role"
  iam_role_name             = var.aws_iam_role_name
  iam_instance_profile_name = var.aws_iam_instance_profile_name
  iam_policy_name           = var.aws_iam_policy_name
  iam_policy                = var.aws_iam_policy
  iam_role_tags             = var.aws_iam_role_tags
  iam_policy_tags           = var.aws_iam_policy_tags
}

module "security_group" {
  source        = "./modules/security_group"
  name          = var.sg_name
  description   = var.sg_description
  vpc_id        = var.sg_vpc_id
  ingress_rules = var.sg_ingress_rules
  egress_rules  = var.sg_egress_rules
  tags          = var.sg_tags
}

module "kms" {
  source     = "./modules/kms"
  name       = var.aws_kms_name
  alias      = var.aws_kms_alias
  kms_policy = var.aws_kms_policy
}
