# EC2 Instance Module
module "ec2_module" {
	source = "./modules/EC2"

	# Strapi variables
	node_env              = var.node_env
	database_client       = var.database_client
	strapi_app_keys       = var.strapi_app_keys
	strapi_admin_jwt      = var.strapi_admin_jwt
	strapi_jwt_secret     = var.strapi_jwt_secret
	database_filename     = var.database_filename
	strapi_api_token_salt = var.strapi_api_token_salt
	
	# Instance variables
	instance_type    = var.instance_type
	root_volume_size = var.root_volume_size
	
	# Project variables
	environment  = var.environment
	project_name = var.project_name
}

# IAM Module
module "iam_module" {
	source = "./modules/IAM"

	# Project variables
	environment  = var.environment
	project_name = var.project_name
}

# ALB Module
module "alb_module" {
	source = "./modules/ALB"

	# Project variables
	environment  = var.environment
	project_name = var.project_name

	# Infrastructure variables
	enable_deletion_protection = var.enable_deletion_protection
}

# VPC Module
module "vpc_module" {
	source = "./modules/VPC"

	# Infrastructure variables
	availability_zones = var.availability_zones

	# Project variables
	environment  = var.environment
	project_name = var.project_name

	# CIDR variables
	vpc_cidr = var.vpc_cidr
	private_subnet_cidrs = var.private_subnet_cidrs
	public_subnet_cidrs = var.public_subnet_cidrs
	allowed_ssh_cidrs = var.allowed_ssh_cidrs # Allow SSH traffic
}

# Key Pair
resource "aws_key_pair" "main" {
	key_name   = "${var.project_name}-key-${var.environment}"
	public_key = var.ssh_public_key

	tags = {
		Name        = "${var.project_name}-key-${var.environment}"
		Environment = var.environment
	}
}