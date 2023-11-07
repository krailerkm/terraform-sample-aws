output "sns_topic_arn" {
  description = "The ARN of the SNS topic for CloudWatch alerts."
  value       = aws_sns_topic.cloudwatch_alerts.arn
}

output "sns_topic_subscription_arn" {
  description = "The ARN of the SNS topic subscription."
  value       = aws_sns_topic_subscription.email_subscription.arn
}
