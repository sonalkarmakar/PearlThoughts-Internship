# -------------------------------------------------------------------------------------------------------------------------
# DESCRIPTION
# This file defines the outputs given by the IAM module, which get used by other modules after passing through main module.
# -------------------------------------------------------------------------------------------------------------------------

output "iam_instance_profile_name" {
	value       = aws_iam_instance_profile.ec2.name
	description = "Name of the IAM profile for the EC2 Instance"
}