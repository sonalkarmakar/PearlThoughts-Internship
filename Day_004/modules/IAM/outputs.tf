output "iam_instance_profile_name" {
	description = "Name of the IAM profile for the EC2 Instance"
	value = aws_iam_instance_profile.ec2.name
}