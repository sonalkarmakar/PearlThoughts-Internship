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