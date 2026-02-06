# Get Latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux_2023" {
	most_recent = true
	owners      = ["amazon"]

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
	instance_type          = var.instance_type
	subnet_id              = aws_subnet.private[0].id
	vpc_security_group_ids = [aws_security_group.ec2.id]
	key_name               = aws_key_pair.main.key_name
	iam_instance_profile   = aws_iam_instance_profile.ec2.name

	user_data = templatefile("${path.module}/user_data.sh", {
		strapi_app_keys       = var.strapi_app_keys
		strapi_api_token_salt = var.strapi_api_token_salt
		strapi_admin_jwt      = var.strapi_admin_jwt
		strapi_jwt_secret     = var.strapi_jwt_secret
		node_env              = var.node_env
		database_client       = var.database_client
		database_filename     = var.database_filename
	})

	root_block_device {
		volume_size           = var.root_volume_size
		volume_type           = "gp3"
		delete_on_termination = true
		encrypted             = true
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