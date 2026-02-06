# Infrastructure variables
variable "aws_region" {
	type        = string
	description = "AWS region where resources will be created"
}

variable "availability_zones" {
	type        = list(string)
	description = "List of availability zones"
}

variable "enable_deletion_protection" {
	type        = bool
	default     = false
	description = "Enable deletion protection for ALB"
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

# VPC variables
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

variable "allowed_ssh_cidrs" {
	type        = list(string)
	description = "CIDR blocks allowed to SSH to EC2 instances"
}

# EC2 Instance variables
variable "ssh_public_key" {
	type        = string
	description = "Public SSH key for EC2 access"
}

variable "instance_type" {
	type        = string
	description = "EC2 instance type"
}

variable "root_volume_size" {
	type        = number
	default     = 20
	description = "Size of root volume in GB"
}

# Strapi Configuration Variables
variable "strapi_app_keys" {
	type        = string
	sensitive   = true
	description = "Strapi APP_KEYS environment variable"
}

variable "strapi_api_token_salt" {
	type        = string
	sensitive   = true
	description = "Strapi API_TOKEN_SALT environment variable"
}

variable "strapi_admin_jwt" {
	type        = string
	sensitive   = true
	description = "Strapi ADMIN_JWT_SECRET environment variable"
}

variable "strapi_jwt_secret" {
	type        = string
	sensitive   = true
	description = "Strapi JWT_SECRET environment variable"
}

variable "node_env" {
	type        = string
	default     = "production"
	description = "Node environment (development, production)"
}

variable "database_client" {
	type        = string
	default     = "sqlite"
	description = "Database client (sqlite, postgres, mysql)"
}

variable "database_filename" {
	type        = string
	default     = ".tmp/data.db"
	description = "Database filename for SQLite"
}