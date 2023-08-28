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
  access_key = "AKIA5PWZ742ZP5U2MVGL"
  secret_key = "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"
}

# Create our first resources AWS VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}