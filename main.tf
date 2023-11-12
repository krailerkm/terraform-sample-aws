# Main configuration file that calls other modules

# Call the VPC module
module "vpc" {
  source = "./modules/vpc"
  aws_region = var.aws_region
  cidr_block = var.cidr_block
  public1_subnet_cidr = "192.168.0.0/26"
  public2_subnet_cidr = "192.168.0.64/26"
  private1_subnet_cidr = "192.168.0.128/26"
  private2_subnet_cidr = "192.168.0.192/26"
}

# Call the EC2 module
#module "ec2" {
#  source = "./modules/ec2"
#  instance_type = var.instance_type
#  ec2_subnet_id = module.vpc.private1_subnet_id
#  vpc_id = module.vpc.vpc_id
#  key_name = var.key_name
#  ami_id = var.ami_id
#  user_data = <<EOF
#  #!/bin/bash
#  # Update the system
#  sudo yum update -y
#  sudo yum install -y httpd wget php
#
#  # Start the Apache server and enable it to start on boot
#  sudo systemctl start httpd
#  sudo systemctl start httpd
#
#  # Set up the PHP info page
#  sudo usermod -a -G apache ec2-user
#  sudo chown -R ec2-user:apache /var/www
#  sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;
#  echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
#  echo "hello world" > /var/www/html/index.html
#  EOF
#}

# Call the NLB module
#module "nlb" {
#  source = "./modules/nlb"
#  lb_subnet_ids = [module.vpc.public1_subnet_id, module.vpc.public2_subnet_id]
#  alb_security_group_id = module.ec2.security_group_id
#  vpc_id = module.vpc.vpc_id
#  ec2_instance_id = module.ec2.instance_id
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