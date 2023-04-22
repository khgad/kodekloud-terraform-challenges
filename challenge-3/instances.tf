resource "aws_instance" "citadel" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.citadel-key.key_name
  user_data = file("install-nginx.sh")
}