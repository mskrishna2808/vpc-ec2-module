output "instance_dns_name" {
  value = aws_instance.web.public_dns
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}

