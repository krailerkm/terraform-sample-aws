variable "instance_id" {
  description = "The ID of the instance that CloudWatch will monitor."
  type        = string
}

variable "sns_topic_arn" {
  description = "The ARN of the SNS topic to notify in case of an alarm."
  type        = string
}
