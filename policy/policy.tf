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
        Resource = var.resource
      },
    ]
  })
}