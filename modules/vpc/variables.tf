variable "aws_region" {
  description = "The CIDR block for the public1 subnet."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public1_subnet_cidr" {
  description = "The CIDR block for the public1 subnet."
  type        = string
}

variable "public2_subnet_cidr" {
  description = "The CIDR block for the public2 subnet."
  type        = string
}

variable "private1_subnet_cidr" {
  description = "The CIDR block for the private1 subnet."
  type        = string
}

variable "private2_subnet_cidr" {
  description = "The CIDR block for the private2 subnet."
  type        = string
}