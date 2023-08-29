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
  region = "eu-central-1"
  access_key = "AKIA5PWZ742ZBO7ZBPTD"
  secret_key = "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"
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