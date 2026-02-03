resource "aws_instance" "access-test" { # "access-test" is the reference in this code
	ami = "ami-0ff5003538b60d5ec" # ID for Amazon Linux AMI from AWS AMI catalogue
	instance_type = "t2.nano"
	key_name = aws_key_pair.test-key.key_name # Reference to SSH key-pair defined below

	tags = {
		Name = "Terratron" # Name shown in AWS Console
	}
}

resource "aws_key_pair" "test-key" { # "test-key" is the variable name
	key_name   = "test-key" # SSH key-pair name in AWS
	public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP email@example.com" # Replaced with sample key
}
