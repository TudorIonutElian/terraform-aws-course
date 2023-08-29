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
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
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

# Create a new S3 Bucket
resource "aws_s3_bucket" "myfirsts3bucket" {
  bucket = "terraform-aws-course-example-bucket-en"

  tags = {
    Name        = "My first bucket"
    Environment = "Development Course Tag"
  }
}