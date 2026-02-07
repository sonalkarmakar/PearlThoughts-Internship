# -------------------------------------------------------------------------------------
# DESCRIPTION
# This file contains the definitions of the outputs given by the main Terraform module.
# -------------------------------------------------------------------------------------

# VPC Outputs
output "vpc_id" {
	value       = module.vpc_module.vpc_id #aws_vpc.main.id
	description = "ID of the VPC"
}

output "public_subnet_ids" {
	value       = module.vpc_module.public_subnet_ids #aws_subnet.public[*].id
	description = "IDs of public subnets"
}

output "private_subnet_ids" {
	value       = module.vpc_module.private_subnet_ids #aws_subnet.private[*].id
	description = "IDs of private subnets"
}

output "nat_gateway_id" {
	value       = module.vpc_module.nat_gateway_id #aws_nat_gateway.main.id
	description = "ID of the NAT Gateway"
}

output "security_group_alb_id" {
	value       = module.vpc_module.security_group_alb_id #aws_security_group.alb.id
	description = "ID of the ALB security group"
}

output "security_group_ec2_id" {
	value       = module.vpc_module.security_group_ec2_id #aws_security_group.ec2.id
	description = "ID of the EC2 security group"
}

# ALB Outputs
output "alb_dns_name" {
	value       = module.alb_module.alb_dns_name #aws_lb.main.dns_name
	description = "DNS name of the Application Load Balancer"
}

output "alb_url" {
	value       = module.alb_module.alb_url #"http://${aws_lb.main.dns_name}"
	description = "URL to access the Strapi application"
}

output "alb_zone_id" {
	value       = module.alb_module.alb_zone_id #aws_lb.main.zone_id
	description = "Zone ID of the ALB"
}

# EC2 Instance Ouputs
output "ec2_instance_id" {
	value       = module.ec2_module.ec2_instance_id #aws_instance.strapi.id
	description = "ID of the EC2 instance"
}

output "ec2_private_ip" {
	value       = module.ec2_module.ec2_private_ip #aws_instance.strapi.private_ip
	description = "Private IP of the EC2 instance"
}

# SSH Key-pair Outputs
output "key_pair_name" {
	value       = aws_key_pair.main.key_name
	description = "Name of the SSH key pair"
}