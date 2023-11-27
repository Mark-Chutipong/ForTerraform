resource "aws_security_group" "allow_tls" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  ingress {
    description      = var.ing_des1
    from_port        = var.ing_porttcp
    to_port          = var.ing_porttcp
    protocol         = var.ing_proto
    cidr_blocks      = [var.cidr_blocks]
  }

  ingress {
    description      = var.ing_des1
    from_port        = var.ing_portdocker
    to_port          = var.ing_portdocker
    protocol         = var.ing_proto
    cidr_blocks      = [var.cidr_blocks]
  }

  ingress {
    description      = var.ing_desssh
    from_port        = var.ing_portssh
    to_port          = var.ing_portssh
    protocol         = var.ing_proto
    cidr_blocks      = [var.cidr_blocks]
  }

  egress {
    from_port        = var.egr_port
    to_port          = var.egr_port
    protocol         = var.egr_proto
    cidr_blocks      = [var.cidr_blocks]
    ipv6_cidr_blocks = [var.var.ipv6_cidr_blocks]
  }

  tags = {
    Name = [var.tags[0]]
  }
}