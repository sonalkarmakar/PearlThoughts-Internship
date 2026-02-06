# Infrastructure variables
variable "availability_zones" {
	type        = list(string)
	description = "List of availability zones"
}

# Project variables
variable "project_name" {
	type        = string
	description = "Project name used for resource naming"
}

variable "environment" {
	type        = string
	description = "Environment name (dev, staging, prod)"
}

# CIDR variables
variable "vpc_cidr" {
	type        = string
	description = "CIDR block for VPC"
}

variable "public_subnet_cidrs" {
	type        = list(string)
	description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
	type        = list(string)
	description = "CIDR blocks for private subnets"
}

variable "allowed_ssh_cidrs" { # Allow SSH traffic
	type        = list(string)
	description = "CIDR blocks allowed to SSH to EC2 instances"
}