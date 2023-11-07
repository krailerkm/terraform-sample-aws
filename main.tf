module "vpc" {
  source = "./modules/vpc"
  # Pass in required variables from variables.tf
}

module "ec2" {
  source = "./modules/ec2"
  # Pass in required variables from variables.tf
}

module "alb" {
  source = "./modules/alb"
  # Pass in required variables from variables.tf
}

module "rds" {
  source = "./modules/rds"
  # Pass in required variables from variables.tf
}

module "sns" {
  source = "./modules/sns"
  # Pass in required variables from variables.tf
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
  # Pass in required variables from variables.tf
}
