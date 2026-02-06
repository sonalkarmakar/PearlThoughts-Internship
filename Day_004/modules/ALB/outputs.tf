# ALB Outputs
output "alb_dns_name" {
	description = "DNS name of the Application Load Balancer"
	value       = aws_lb.main.dns_name
}

output "alb_url" {
	description = "URL to access the Strapi application"
	value       = "http://${aws_lb.main.dns_name}"
}

output "alb_zone_id" {
	description = "Zone ID of the ALB"
	value       = aws_lb.main.zone_id
}