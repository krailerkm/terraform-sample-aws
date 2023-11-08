variable "vpc_id" {
  description = "The VPC ID where the instance will be created."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instance."
  type        = string
}

variable "key_name" {
  description = "The key pair name to attach to the instance."
  type        = string
}

variable "ec2_subnet_id" {
  description = "The ID of the subnet where the instance will be created."
  type        = string
}

variable "user_data" {
  description = "The user data script to initialize the instance."
  default     = ""
  type        = string
}