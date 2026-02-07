# IAM Role for EC2
resource "aws_iam_role" "ec2" {
	name = "${var.project_name}-ec2-role-${var.environment}"

	assume_role_policy = jsonencode({
		Version   = "2012-10-17"
		Statement = [
			{
				Action = "sts:AssumeRole"
				Effect = "Allow"
				Principal = {
					Service = "ec2.amazonaws.com"
				}
			}
		]
	})

	tags = {
		Name        = "${var.project_name}-ec2-role-${var.environment}"
		Environment = var.environment
	}
}

# IAM Role Policy Attachment
resource "aws_iam_role_policy_attachment" "ec2_ssm" {
	role       = aws_iam_role.ec2.name
	policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

# IAM Instance Profile
resource "aws_iam_instance_profile" "ec2" {
	name = "${var.project_name}-ec2-profile-${var.environment}"
	role = aws_iam_role.ec2.name

	tags = {
		Name        = "${var.project_name}-ec2-profile-${var.environment}"
		Environment = var.environment
	}
}