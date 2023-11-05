terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
  backend "s3" {
    bucket = "hariroboshop"
    region = "us-east-1"
    dynamodb_table = "roboshoptable"
    key = "minikube"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}