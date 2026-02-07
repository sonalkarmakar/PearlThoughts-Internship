# ----------------------------------------------------------------------------------
# DESCRIPTION
# This file defines the ALB module.
# It takes input defined in variables.tf, and gives output as defined in outputs.tf.
# ----------------------------------------------------------------------------------

# Application Load Balancer
resource "aws_lb" "main" {
	name               = "${var.project_name}-alb-${var.environment}"
	subnets            = var.public_subnet_ids #aws_subnet.public[*].id
	internal           = false
	security_groups    = [var.security_group_alb_id] #[aws_security_group.alb.id]
	load_balancer_type = "application"

	enable_deletion_protection = var.enable_deletion_protection

	tags = {
		Name        = "${var.project_name}-alb-${var.environment}"
		Environment = var.environment
	}
}

# Target Group
resource "aws_lb_target_group" "strapi" {
	name     = "${var.project_name}-tg-${var.environment}"
	port     = 1337
	vpc_id   = var.vpc_id #aws_vpc.main.id
	protocol = "HTTP"

	health_check {
		path                = "/"
		port                = "traffic-port"
		matcher             = "200,301,302"
		timeout             = 5
		enabled             = true
		interval            = 30
		protocol            = "HTTP"
		healthy_threshold   = 2
		unhealthy_threshold = 2
	}

	tags = {
		Name        = "${var.project_name}-tg-${var.environment}"
		Environment = var.environment
	}
}

# Target Group Attachment
resource "aws_lb_target_group_attachment" "strapi" {
	port             = 1337
	target_id        = var.ec2_instance_id #aws_instance.strapi.id
	target_group_arn = aws_lb_target_group.strapi.arn
}

# ALB Listener
resource "aws_lb_listener" "http" {
	port              = "80"
	protocol          = "HTTP"
	load_balancer_arn = aws_lb.main.arn

	default_action {
		type             = "forward"
		target_group_arn = aws_lb_target_group.strapi.arn
	}
}