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
data "aws_iam_policy_document" "document" {
  statement {
    
    effect = "Allow"
    
    
  }
}
resource "aws_kms_key_policy" "default" {
  key_id = aws_kms_key.default.key_id
  policy = data.aws_iam_policy_document.document.json
}



