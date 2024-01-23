module "ec2_instance" {
  source = "git::https://github.com/Mark-Chutipong/ec2_instance.git?ref=main"

  ami                  = var.aws_ec2_ami
  instance_type        = var.aws_ec2_instance_type
  iam_instance_profile = var.aws_iam_instance_profile_name #module.iam_role.name
  security_groups      = [module.security_group.id]        # [var.sg_name]                     #module.security_group.name
  key_name             = var.aws_ec2_key_name
  user_data            = file("${var.aws_ec2_user_data}")
  ebs_size             = var.aws_ebs_size
  ebs_type             = var.aws_ebs_type
  # kms_key_id           = module.kms.arn
  availability_zone = var.aws_availability_zone
  subnet_id         = var.aws_ec2_subnet_id
  device_name       = var.aws_ebs_device_name
  ec2_tags          = var.aws_ec2_tags
  ebs_tags          = var.aws_ebs_tags
}

# module "ec2_instance" {
#   source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=master"

#   instance_type               = var.aws_ec2_instance_type
#   subnet_id                   = var.aws_ec2_subnet_id
#   vpc_security_group_ids      = [module.security_group.id]
#   associate_public_ip_address = true
#   tags                        = var.aws_ec2_tags
# }

module "iam_role" {
  source                    = "git::https://github.com/Mark-Chutipong/iam_role.git?ref=main"
  iam_role_name             = var.aws_iam_role_name
  iam_instance_profile_name = var.aws_iam_instance_profile_name
  iam_policy_name           = var.aws_iam_policy_name
  iam_policy                = var.aws_iam_policy
  iam_role_tags             = var.aws_iam_role_tags
  iam_policy_tags           = var.aws_iam_policy_tags
}

module "security_group" {
  source        = "git::https://github.com/Mark-Chutipong/security_group.git?ref=main"
  name          = var.sg_name
  description   = var.sg_description
  vpc_id        = var.sg_vpc_id
  ingress_rules = var.sg_ingress_rules
  egress_rules  = var.sg_egress_rules
  tags          = var.sg_tags
}

module "kms" {
  source     = "git::https://github.com/Mark-Chutipong/kms.git?ref=main"
  name       = var.aws_kms_name
  alias      = var.aws_kms_alias
  kms_policy = var.aws_kms_policy
}
