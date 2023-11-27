resource "aws_kms_alias" "a" {
  name          = "alias/testalias"
  target_key_id = aws_kms_key.example.key_id
}