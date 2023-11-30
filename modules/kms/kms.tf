resource "aws_kms_key" "default" {
  description = var.name
}

resource "aws_kms_alias" "a" {
  name          = var.alias
  target_key_id = aws_kms_key.default.key_id
}

resource "aws_kms_key_policy" "default" {
  key_id = aws_kms_key.default.id
  policy = data.aws_kms_key_policy_document.kms_policy.json
}

data "aws_kms_key_policy_document" "kms_policy" {
  statement {
    effect = "Allow"
    Resource = "*"
    Sid      = "Enable IAM User Permissions"

    principals {
      AWS = "*"
    }

    Action = "kms:*"

  }
}


