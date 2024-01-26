terraform {
  backend "s3" {
    bucket         = "devsecops-application"
    region         = "us-east-1"
    key            = "myterraformstate.tfstate"
    dynamodb_table = "project"
    encrypt        = true 
    profile        = "newprofile" #AWS profile
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}