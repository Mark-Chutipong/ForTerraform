module "ec2_instance" {
  source        = "./ec2_instance"
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  tags          = var.aws_tags
}

module "iam_role" {
  source  = "./iam_role"
  name    = var.role_name
  version = var.version
  action  = var.role_action
  effect  = var.role_effect
  sid     = var.role_sid
  service = var.role_service
  tags    = var.role_tags
}

module "policy" {
  source   = "./policy"
  name     = var.policy_name
  version  = var.policy_version
  action   = var.policy_action
  effect   = var.policy_effect
  resource = var.policy_resource
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

module "kms_policy" {
  source       = "./kms_policy"
  id           = var.kms_id
  action       = var.kms_action
  effect       = var.kms_effect
  PrincipalAWS = var.kms_PrincipalAWS
  resource     = var.kms_resource
  Sid          = var.kms_Sid
  version      = var.kms_version
}