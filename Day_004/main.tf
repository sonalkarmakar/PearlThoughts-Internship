# Key Pair
resource "aws_key_pair" "main" {
	key_name   = "${var.project_name}-key-${var.environment}"
	public_key = var.ssh_public_key

	tags = {
		Name        = "${var.project_name}-key-${var.environment}"
		Environment = var.environment
	}
}

# EC2 Instance Module
module "ec2_module" {
	source = "./modules/EC2"

	# SSH key-pair
	key_pair_name = aws_key_pair.main.key_name

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

	# IAM attributes
	iam_instance_profile = module.iam_module.iam_instance_profile_name
	
	# VPC attributes
	private_subnet_ids    = module.vpc_module.private_subnet_ids
	security_group_ec2_id = module.vpc_module.security_group_ec2_id
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

	# VPC attributes
	vpc_id                = module.vpc_module.vpc_id
	public_subnet_ids     = module.vpc_module.public_subnet_ids
	security_group_alb_id = module.vpc_module.security_group_alb_id

	# EC2 attributes
	ec2_instance_id = module.ec2_module.ec2_instance_id
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
	vpc_cidr             = var.vpc_cidr
	allowed_ssh_cidrs    = var.allowed_ssh_cidrs # Allow SSH traffic
	public_subnet_cidrs  = var.public_subnet_cidrs
	private_subnet_cidrs = var.private_subnet_cidrs
}