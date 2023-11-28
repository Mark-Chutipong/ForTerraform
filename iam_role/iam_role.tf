provider "aws" {
  region = var.region
}
resource "aws_iam_policy" "default" {
  name = var.iam_policy_name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = var.iam_policy
}
resource "aws_iam_role" "default" {
  name = var.iam_role_name

  assume_role_policy = var.iam_role
  tags = {
    Name = var.tags["RoleName"]
  }
}
resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.default.name
  policy_arn = aws_iam_policy.default.arn
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = var.profilename
  role = aws_iam_role.default.name
}

