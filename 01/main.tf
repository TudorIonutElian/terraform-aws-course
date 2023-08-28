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
  access_key = "AKIA5PWZ742ZGWPSY3NN"
  secret_key = "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"
}
