# ALB Outputs
output "alb_dns_name" {
	value       = aws_lb.main.dns_name
	description = "DNS name of the Application Load Balancer"
}

output "alb_url" {
	value       = "http://${aws_lb.main.dns_name}"
	description = "URL to access the Strapi application"
}

output "alb_zone_id" {
	value       = aws_lb.main.zone_id
	description = "Zone ID of the ALB"
}