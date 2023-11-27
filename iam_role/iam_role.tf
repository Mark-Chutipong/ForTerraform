provider "aws" {
    region = var.region
}

resource "aws_iam_role" "test_role" {
  name = var.name

  assume_role_policy = jsonencode({
    Version = var.version
    Statement = [
      {
        Action = var.action
        Effect = var.effect
        Sid    = var.sid
        Principal = {
          Service = var.service
        }
      },
    ]
  })
  tags = {
    Name = [var.tags[0]]
  }
}

