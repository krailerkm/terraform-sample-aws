variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone where the subnet will be created."
  type        = string
}

# ... add more variables as needed
