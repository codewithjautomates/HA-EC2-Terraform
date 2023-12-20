resource "aws_key_pair" "aws_jerky_key" {
  key_name   = "aws_jerky_key"
  public_key = file(var.PUB_KEYPAIR)
}