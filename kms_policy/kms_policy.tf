resource "aws_kms_key_policy" "example" {
  key_id = [aws_kms_key.example.id]
  policy = jsonencode({
    Id = var.id
    Statement = [
      {
        Action = var.action
        Effect = var.effect
        Principal = {
          AWS = var.PrincipalAWS
        }

        Resource = var.resource
        Sid      = var.Sid
      },
    ]
    Version = var.version
  })
}