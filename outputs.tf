# Output values after Terraform apply

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

#output "ec2_instance_public_ip" {
#  description = "The public IP address of the EC2 instance"
#  value       = module.ec2.instance_id
#}

#output "ec2_instance_public_dns" {
#  description = "The public DNS of the EC2 instance"
#  value       = module.ec2.instance_public_dns
#}

#output "nlb_dns_name" {
#  description = "The DNS name of the ALB"
#  value       = module.nlb.nlb_dns_name
#}
