terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

   backend "s3" {
      bucket = "k8s-jaya"
      key    = "kubectl"
      region = "ap-south-1"
      dynamodb_table = "k8s-lock"
    }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}