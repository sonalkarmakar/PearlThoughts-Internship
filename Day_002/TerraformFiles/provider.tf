# Specifying Providers and Regions
terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "6.30.0"
		}
	}
}

provider "aws" {
	# Configuration options
	region = "ap-south-1" # Change as per your region
}
