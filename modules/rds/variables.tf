variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "db_name" {
  description = "The name of the database to create when the DB instance is created"
  type        = string
}

variable "db_username" {
  description = "Username for the master DB user"
  type        = string
}

variable "db_password" {
  description = "Password for the master DB user"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable "engine" {
  description = "The database engine to use"
  type        = string
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
}

variable "subnet_group_name" {
  description = "Name of the DB subnet group to associate"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs to associate"
  type        = list(string)
}

variable "db_parameter_group_name" {
  description = "Name of the DB parameter group to associate"
  type        = string
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
  type        = bool
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted"
  default     = true
  type        = bool
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = 7
  type        = number
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = false
  type        = bool
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
  default     = true
  type        = bool
}

variable "deletion_protection" {
  description = "The database can't be deleted when this value is set to true."
  default     = false
  type        = bool
}

# ... Add any additional variables as needed for your configuration
