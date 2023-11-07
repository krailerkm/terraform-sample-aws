# Output values after Terraform apply

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "ec2_instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2.instance_public_ip
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = module.alb.alb_dns_name
}

output "rds_endpoint" {
  description = "The connection endpoint for the RDS instance"
  value       = module.rds.rds_endpoint
}

output "sns_topic_arn" {
  description = "The ARN for the SNS topic"
  value       = module.sns.sns_topic_arn
}

output "cloudwatch_alarm_id" {
  description = "The ID of the CloudWatch alarm"
  value       = module.cloudwatch.cloudwatch_alarm_id
}
