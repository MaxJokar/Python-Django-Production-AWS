# take a scriptf from local machine and puts it in AWS s3 bucket

terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "django-api-prod-ready5"
    key    = "app.tfstate"
    region = "us-west-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "django-api-prod-ready-lock1"
    encrypt        = true

  }
  required_providers {
    aws = {
      source  = "hashicorp/aws" # a plugnin
      version = "~> 4.41.0"

    }

  }

}



provider "aws" {
  region = "us-west-2"
}

locals {
  prefix = "${var.prefix}-${terraform.workpace}"
  common_tags = {
    Environment = terraform.workpace
    Project     = var.Project
    Owner       = var.contact
    ManageBy    = "MaxJokar"
  }

}


data "aws_region" "current" {

}





