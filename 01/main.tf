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

# Upload a file to S3 bucket after creation
resource "aws_s3_bucket_object" "object" {
  bucket = "terraform-aws-course-example-bucket-en"
  key    = "myfile"
  source = "./myfile.txt"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = file("myfile.txt")
}