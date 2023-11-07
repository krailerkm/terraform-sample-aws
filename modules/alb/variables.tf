variable "vpc_id" {
  description = "The VPC ID where the ALB will be created."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to attach to the ALB."
  type        = list(string)
}

variable "alb_security_group_id" {
  description = "The ID of the security group for the ALB."
  type        = string
}

# ... add more variables as needed
