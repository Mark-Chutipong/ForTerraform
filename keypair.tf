resource "aws_key_pair" "default" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0Fg8D/pbeFXV5e5kDuqyfkApq2V+8mT28HvGHTIu6YYAG6UZc3QXFrrxtNVr1aEv8CQi3Gx/4Aq0hp2dmUR5wDMYL7hCeqf1XAyTb8d6p9KoKXazv6RgmgaugvzPSjDH+1wdKVEA0upv05o5WNdtizVnkBxGgCN9y5dWqV0UewBjZeM+N3E9ZiOjP5djGqGFEbGLuI62JseDlxmjJywoohsjoWJVB0XdK+stA4NNvWWHv2MR0qHmwx7nxUPu8WojKEcsVhQvII/LY2tFWO1kSaTTYJ6i8Bj5PRYTVBenOOkTosVWh2zN8MbIWuA3KsBvOZwHIWxhMa5Ti6Mweffp9"
  create     =  var.aws_ec2_create_keypair
}

