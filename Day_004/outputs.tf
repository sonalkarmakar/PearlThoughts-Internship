# VPC Outputs
output "vpc_id" {
	description = "ID of the VPC"
	value       = module.vpc_module.vpc_id #aws_vpc.main.id
}

output "public_subnet_ids" {
	description = "IDs of public subnets"
	value       = module.vpc_module.public_subnet_ids #aws_subnet.public[*].id
}

output "private_subnet_ids" {
	description = "IDs of private subnets"
	value       = module.vpc_module.private_subnet_ids #aws_subnet.private[*].id
}

output "nat_gateway_id" {
	description = "ID of the NAT Gateway"
	value       = module.vpc_module.nat_gateway_id #aws_nat_gateway.main.id
}

output "security_group_alb_id" {
	description = "ID of the ALB security group"
	value       = module.vpc_module.security_group_alb_id #aws_security_group.alb.id
}

output "security_group_ec2_id" {
	description = "ID of the EC2 security group"
	value       = module.vpc_module.security_group_ec2_id #aws_security_group.ec2.id
}

# ALB Outputs
output "alb_dns_name" {
	description = "DNS name of the Application Load Balancer"
	value       = module.alb_module.alb_dns_name #aws_lb.main.dns_name
}

output "alb_url" {
	description = "URL to access the Strapi application"
	value       = module.alb_module.alb_url #"http://${aws_lb.main.dns_name}"
}

output "alb_zone_id" {
	description = "Zone ID of the ALB"
	value       = module.alb_module.alb_zone_id #aws_lb.main.zone_id
}

# EC2 Instance Ouputs
output "ec2_instance_id" {
	description = "ID of the EC2 instance"
	value       = module.ec2_module.ec2_instance_id #aws_instance.strapi.id
}

output "ec2_private_ip" {
	description = "Private IP of the EC2 instance"
	value       = module.ec2_module.ec2_private_ip #aws_instance.strapi.private_ip
}

# SSH Key-pair Outputs
output "key_pair_name" {
	description = "Name of the SSH key pair"
	value       = aws_key_pair.main.key_name
}