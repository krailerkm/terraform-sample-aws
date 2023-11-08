output "instance_id" {
  description = "The ID of the EC2 instance."
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.web.public_ip
}

output "instance_public_dns" {
  description = "The public dns of the EC2 instance."
  value       = aws_instance.web.public_dns
}

output "security_group_id" {
  description = "The ID of the security group."
  value       = aws_security_group.allow_web.id
}
