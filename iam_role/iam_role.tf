provider "aws" {
  region = var.region
}
resource "aws_iam_policy" "test_policy" {
  name = var.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = var.version
    Statement = [
      {
        Action = [
          var.action,
        ]
        Effect   = var.effect
        Resource = 0
      },
    ]
  })
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
resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.test_role.name
  policy_arn = aws_iam_policy.test_policy.arn
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = [aws_iam_role.test_role.name]
}

