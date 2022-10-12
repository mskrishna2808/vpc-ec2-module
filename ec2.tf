resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_pair
  subnet_id                   = aws_subnet.main.id
  vpc_security_group_ids      = [aws_default_security_group.default.id]
  associate_public_ip_address = true
  iam_instance_profile        = var.iam_role

  tags = {
    "Name" = var.instance_name
  }
}