resource "aws_key_pair" "citadel-key" {
  key_name = "citadel"
  public_key = file(".ssh/ec2-connect-key.pub")
}