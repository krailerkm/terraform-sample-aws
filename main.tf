# Main configuration file that calls other modules

# Call the VPC module
module "vpc" {
  source = "./modules/vpc"
  aws_region = var.aws_region
  cidr_block = "192.168.0.0/24"
  public1_subnet_cidr = "192.168.0.0/26"
  public2_subnet_cidr = "192.168.0.64/26"
  private1_subnet_cidr = "192.168.0.128/26"
  private2_subnet_cidr = "192.168.0.192/26"
}

# Call the EC2 module
#module "ec2" {
#  source = "./modules/ec2"
#  # Pass in required variables from variables.tf
#}

# Call the ALB module
#module "alb" {
#  source = "./modules/alb"
#  # Pass in required variables from variables.tf
#}

# Call the RDS module
#module "rds" {
#  source = "./modules/rds"
#  # Pass in required variables from variables.tf
#}

# Call the SNS module
#module "sns" {
#  source = "./modules/sns"
#  # Pass in required variables from variables.tf
#}

# Call the CloudWatch module
#module "cloudwatch" {
#  source = "./modules/cloudwatch"
#  # Pass in required variables from variables.tf
#}
