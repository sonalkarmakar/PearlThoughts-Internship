# VPC Outputs
output "vpc_id" {
	description = "ID of the VPC"
	value       = aws_vpc.main.id
}

output "public_subnet_ids" {
	description = "IDs of public subnets"
	value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
	description = "IDs of private subnets"
	value       = aws_subnet.private[*].id
}

output "nat_gateway_id" {
	description = "ID of the NAT Gateway"
	value       = aws_nat_gateway.main.id
}

output "security_group_alb_id" {
	description = "ID of the ALB security group"
	value       = aws_security_group.alb.id
}

output "security_group_ec2_id" {
	description = "ID of the EC2 security group"
	value       = aws_security_group.ec2.id
}