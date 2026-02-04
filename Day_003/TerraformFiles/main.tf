# Defining new SSH key-pair
resource "tls_private_key" "newkey" {
	algorithm = "RSA"
	rsa_bits  = 4096
}

# Storing the private key
resource "local_file" "private_key" {
	content  = tls_private_key.newkey.private_key_pem
	filename = "${path.module}/keys/my_ec2_key.pem"
}

# Storing the public key
resource "local_file" "public_key" {
	content  = tls_private_key.newkey.public_key_openssh
	filename = "${path.module}/keys/my_ec2_key.pub"
}

# Using the key-pair for EC2 instance
resource "aws_key_pair" "generated" {
	key_name   = "Sample_Strapi_Key" # SSH key-pair name in AWS
	public_key = tls_private_key.newkey.public_key_openssh
}

# Defining the EC2 instance
resource "aws_instance" "strapi_vm" {
	ami           = "ami-0ff5003538b60d5ec" # ID for Amazon Linux AMI from AWS AMI catalogue
	key_name      = aws_key_pair.generated.key_name # Reference to SSH key-pair defined above
	instance_type = "t2.small" # Smalles EC2 supporting Strapi

	tags = {
		Name = "Sample Strapi Project" # Assign a AWS tag
	}
}