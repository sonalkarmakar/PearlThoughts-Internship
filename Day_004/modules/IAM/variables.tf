# --------------------------------------------------------------------------
# DESCRIPTION
# This file defines the variables/inputs required by the IAM module.
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