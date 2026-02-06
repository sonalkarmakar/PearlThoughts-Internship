# Application Load Balancer
resource "aws_lb" "main" {
	name               = "${var.project_name}-alb-${var.environment}"
	internal           = false
	load_balancer_type = "application"
	security_groups    = [var.security_group_alb_id] #[aws_security_group.alb.id]
	subnets            = var.public_subnet_ids #aws_subnet.public[*].id

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
	protocol = "HTTP"
	vpc_id   = var.vpc_id #aws_vpc.main.id

	health_check {
		enabled             = true
		healthy_threshold   = 2
		interval            = 30
		matcher             = "200,301,302"
		path                = "/"
		port                = "traffic-port"
		protocol            = "HTTP"
		timeout             = 5
		unhealthy_threshold = 2
	}

	tags = {
		Name        = "${var.project_name}-tg-${var.environment}"
		Environment = var.environment
	}
}

# Target Group Attachment
resource "aws_lb_target_group_attachment" "strapi" {
	target_group_arn = aws_lb_target_group.strapi.arn
	target_id        = var.ec2_instance_id #aws_instance.strapi.id
	port             = 1337
}

# ALB Listener
resource "aws_lb_listener" "http" {
	load_balancer_arn = aws_lb.main.arn
	port              = "80"
	protocol          = "HTTP"

	default_action {
		type             = "forward"
		target_group_arn = aws_lb_target_group.strapi.arn
	}
}