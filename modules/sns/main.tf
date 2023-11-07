resource "aws_sns_topic" "cloudwatch_alerts" {
  name = "cloudwatch-alerts-topic"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.cloudwatch_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email_address
}
