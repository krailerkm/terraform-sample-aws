output "nlb_arn" {
  description = "The ARN of the NLB."
  value       = aws_lb.nlb.arn
}

output "nlb_dns_name" {
  description = "The DNS name of the NLB."
  value       = aws_lb.nlb.dns_name
}