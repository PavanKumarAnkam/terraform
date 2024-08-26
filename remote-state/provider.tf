terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.62.0"
    }
  }
  backend "s3" {
    bucket = "aws-s3-demo-pa1"
    key = "aws-s3-key"
    region = "us-east-1"
    dynamodb_table = "aws-dynamodb-demo"
  }

}
#provide authentication here
provider "aws" {
  region = "us-east-1"
}

