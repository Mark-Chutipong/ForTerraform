resource "aws_kms_key" "default" {
  description = var.name
}

resource "aws_kms_alias" "a" {
  name          = var.alias
  target_key_id = aws_kms_key.default.key_id
}

resource "aws_kms_key_policy" "default" {
  key_id = aws_kms_key.default.id
  policy = var.kmspolicy
}