# -------------------------------------------------------------------------------------------------------------------------
# DESCRIPTION
# This file defines the outputs given by the EC2 module, which get used by other modules after passing through main module.
# -------------------------------------------------------------------------------------------------------------------------

# EC2 Instance Ouputs
output "ec2_instance_id" {
	value       = aws_instance.strapi.id
	description = "ID of the EC2 instance"
}

output "ec2_private_ip" {
	value       = aws_instance.strapi.private_ip
	description = "Private IP of the EC2 instance"
}