# Definitions of variables used across the configurations

variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "aws_profile" {
  description = "The AWS profile name to use for the connection."
  type        = string
  default     = "default"
}