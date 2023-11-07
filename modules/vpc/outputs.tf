output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the created public subnet."
  value       = aws_subnet.public_subnet.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = aws_internet_gateway.gw.id
}

# ... additional outputs for other resources
