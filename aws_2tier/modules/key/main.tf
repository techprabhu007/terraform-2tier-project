resource "aws_key_pair" "three-tier-key" {
  key_name   = "three-tier-key"
  public_key = file("~/.ssh/three-tier-key.pub")
}
