# -------------------------------------------------------------------------------------------------------------------------
# DESCRIPTION
# This file defines the outputs given by the VPC module, which get used by other modules after passing through main module.
# -------------------------------------------------------------------------------------------------------------------------

# VPC Outputs
output "vpc_id" {
	value       = aws_vpc.main.id
	description = "ID of the VPC"
}

output "public_subnet_ids" {
	value       = aws_subnet.public[*].id
	description = "IDs of public subnets"
}

output "private_subnet_ids" {
	value       = aws_subnet.private[*].id
	description = "IDs of private subnets"
}

output "nat_gateway_id" {
	value       = aws_nat_gateway.main.id
	description = "ID of the NAT Gateway"
}

output "security_group_alb_id" {
	value       = aws_security_group.alb.id
	description = "ID of the ALB security group"
}

output "security_group_ec2_id" {
	value       = aws_security_group.ec2.id
	description = "ID of the EC2 security group"
}