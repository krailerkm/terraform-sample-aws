# Definitions of variables used across the configurations

variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "cidr_block" {
  description = "The CIDR to deploy the resources"
  type        = string
  default     = "192.168.0.0/24"
}

variable "aws_profile" {
  description = "The AWS profile name to use for the connection."
  type        = string
  default     = "default"
}

variable "instance_type" {
  description = "The AWS profile name to use for the connection."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The AWS Key name to use for the connection."
  type        = string
  default     = "default"
}

variable "ami_id" {
  description = "The AWS AMI ID to deploy the resources"
  type        = string
  default     = "default"
}