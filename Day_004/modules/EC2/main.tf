# ----------------------------------------------------------------------------------
# DESCRIPTION
# This file defines the EC2 module.
# It takes input defined in variables.tf, and gives output as defined in outputs.tf.
# ----------------------------------------------------------------------------------

# Get Latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux_2023" {
	owners      = ["amazon"]
	most_recent = true

	filter {
		name   = "name"
		values = ["al2023-ami-*-x86_64"]
	}

	filter {
		name   = "virtualization-type"
		values = ["hvm"]
	}
}

# Defining EC2 Instance
resource "aws_instance" "strapi" {
	ami                    = data.aws_ami.amazon_linux_2023.id
	key_name               = var.key_pair_name #aws_key_pair.main.key_name
	subnet_id              = var.private_subnet_ids[0] #aws_subnet.private[0].id
	instance_type          = var.instance_type
	iam_instance_profile   = var.iam_instance_profile #aws_iam_instance_profile.ec2.name
	vpc_security_group_ids = [var.security_group_ec2_id] #[aws_security_group.ec2.id]

	user_data = templatefile("${path.root}/user_data.sh", {
		node_env              = var.node_env
		strapi_app_keys       = var.strapi_app_keys
		database_client       = var.database_client
		strapi_admin_jwt      = var.strapi_admin_jwt
		strapi_jwt_secret     = var.strapi_jwt_secret
		database_filename     = var.database_filename
		strapi_api_token_salt = var.strapi_api_token_salt
	})

	root_block_device {
		encrypted             = true
		volume_size           = var.root_volume_size
		volume_type           = "gp3"
		delete_on_termination = true
	}

	metadata_options {
		http_tokens   = "required"
		http_endpoint = "enabled"
	}

	tags = {
		Name        = "${var.project_name}-ec2-${var.environment}"
		Environment = var.environment
	}
}