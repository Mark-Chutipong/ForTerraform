provider "aws" {
  region = "ap-southeast-1"
}
resource "aws_iam_policy" "test_policy" {
  name = "test_policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
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
}

resource "aws_iam_role" "test_role" {
  name = "test_role"

  assume_role_policy = jsonencode({
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
  tags = {
    Name = "Test Role"
  }
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = "${aws_iam_role.test_role.name}"
  policy_arn = "${aws_iam_policy.test_policy.arn}"
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0338dc15f3ea40aad"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "SSH Access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_kms_key" "example" {
  description = "example"
    
  
}
resource "aws_kms_alias" "a" {
  name          = "alias/testalias"
  target_key_id = aws_kms_key.example.key_id
}

resource "aws_kms_key_policy" "example" {
  key_id = aws_kms_key.example.id
  policy = jsonencode({
    Id = "example"
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
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.test_role.name
  
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0Fg8D/pbeFXV5e5kDuqyfkApq2V+8mT28HvGHTIu6YYAG6UZc3QXFrrxtNVr1aEv8CQi3Gx/4Aq0hp2dmUR5wDMYL7hCeqf1XAyTb8d6p9KoKXazv6RgmgaugvzPSjDH+1wdKVEA0upv05o5WNdtizVnkBxGgCN9y5dWqV0UewBjZeM+N3E9ZiOjP5djGqGFEbGLuI62JseDlxmjJywoohsjoWJVB0XdK+stA4NNvWWHv2MR0qHmwx7nxUPu8WojKEcsVhQvII/LY2tFWO1kSaTTYJ6i8Bj5PRYTVBenOOkTosVWh2zN8MbIWuA3KsBvOZwHIWxhMa5Ti6Mweffp9"
}

resource "aws_instance" "example" {
  ami           = "ami-02453f5468b897e31"
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  security_groups = [aws_security_group.allow_tls.name]
  key_name = aws_key_pair.deployer.key_name
  user_data = <<EOF
  "sudo yum install -y docker
  sudo usermod -a -G docker ec2-user
  service docker start"
  EOF
  

  #root_block_device {
    #delete_on_termination = true
    #encrypted             = true
    #kms_key_id = aws_kms_key.example.id
    #volume_size           = "10"
    #volume_type = "gp2" #Disk
  #}
 
  tags = {
    Name = "Test"
  }
}






