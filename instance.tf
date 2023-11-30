module "ec2_instance" {
  source               = "./modules/ec2_instance"
  ami                  = var.aws_ec2_ami
  instance_type        = var.aws_ec2_instance_type
  iam_instance_profile = module.iam_role.name
  security_groups      = [module.security_group.id]
  key_name             = aws_key_pair.default.key_name
  user_data            = file("${var.aws_ec2_user_data}")
  tags                 = var.aws_ec2_tags
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
