output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.tvpc.id
}

output "public1_subnet_id" {
  description = "The ID of the created public1 subnet."
  value       = aws_subnet.public1_subnet.id
}

output "public2_subnet_id" {
  description = "The ID of the created public2 subnet."
  value       = aws_subnet.public2_subnet.id
}

output "private1_subnet_id" {
  description = "The ID of the created private1 subnet."
  value       = aws_subnet.private1_subnet.id
}

output "private2_subnet_id" {
  description = "The ID of the created private2 subnet."
  value       = aws_subnet.private2_subnet.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = aws_internet_gateway.gw.id
}