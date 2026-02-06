# EC2 Instance Ouputs
output "ec2_instance_id" {
	description = "ID of the EC2 instance"
	value       = aws_instance.strapi.id
}

output "ec2_private_ip" {
	description = "Private IP of the EC2 instance"
	value       = aws_instance.strapi.private_ip
}