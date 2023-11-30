#KMS Key

resource "aws_kms_key" "default" {
  description = var.name
}

# KMS Alias

resource "aws_kms_alias" "a" {
  name          = var.alias
  target_key_id = aws_kms_key.default.key_id
}

# KMS Key Policy

resource "aws_kms_key_policy" "default" {
  key_id = aws_kms_key.default.id
  policy = var.kms_policy
}



