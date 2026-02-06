# Project variables
variable "project_name" {
	type        = string
	description = "Project name used for resource naming"
}

variable "environment" {
	type        = string
	description = "Environment name (dev, staging, prod)"
}

# Infrastructure variables
variable "enable_deletion_protection" {
	type        = bool
	default     = false
	description = "Enable deletion protection for ALB"
}

# VPC attributes
variable "security_group_alb_id" {
	description = "ID of the ALB security group"
}

variable "public_subnet_ids" {
	description = "IDs of public subnets"
}

variable "vpc_id" {
	description = "ID of the VPC"
}

# EC2 Instance attributes
variable "ec2_instance_id" {
	description = "ID of the EC2 instance"
}