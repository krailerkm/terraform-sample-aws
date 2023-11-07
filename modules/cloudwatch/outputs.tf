output "cloudwatch_alarm_id" {
  description = "The ID of the CloudWatch alarm."
  value       = aws_cloudwatch_metric_alarm.instance_status_check_failure.id
}
