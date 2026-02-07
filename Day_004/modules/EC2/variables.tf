# --------------------------------------------------------------------------
# DESCRIPTION
# This file defines the variables/inputs required by the EC2 module.
# These inputs or variable values are supplied by the main Terraform module.
# --------------------------------------------------------------------------

# Project variables
variable "project_name" {
	type        = string
	description = "Project name used for resource naming"
}

variable "environment" {
	type        = string
	description = "Environment name (dev, staging, prod)"
}

# Instance variables
variable "instance_type" {
	type        = string
	description = "EC2 instance type"
}

variable "key_pair_name" {
	description = "Name of the SSH key pair"
}

variable "root_volume_size" {
	type        = number
	default     = 20
	description = "Size of root volume in GB"
}

variable "security_group_ec2_id" {
	description = "ID of the ALB security group"
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

# VPC attributes
variable "private_subnet_ids" {
	description = "IDs of private subnets"
}

# IAM attributes
variable "iam_instance_profile" {
	description = "Name of the IAM profile for the EC2 Instance"
}