resource "aws_cloudwatch_metric_alarm" "instance_status_check_failure" {
  alarm_name          = "instance-status-check-failure"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "0"
  alarm_description   = "This metric monitors EC2 instance status check failures"
  dimensions = {
    InstanceId = var.instance_id
  }
  alarm_actions = [var.sns_topic_arn]
}
