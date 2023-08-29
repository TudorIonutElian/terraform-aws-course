terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws",
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws"{
  shared_config_files      = ["/home/root/.aws/conf"]
  shared_credentials_files = ["/home/root/.aws/creds"]
  profile                  = "default"
}

# Create our first resources AWS VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "Name Tag"
    "Version" = "Version Tag"
  }
}

# Create and lauch first ec2 instance

resource "aws_instance" "myfirstserverec2instance" {
  ami = "ami-0766f68f0b06ab145"
  instance_type = "t2.micro"
}