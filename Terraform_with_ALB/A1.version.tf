provider "aws" {
  region  = var.aws_region
  profile = kailas
  
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "express1-terra-tf"
    key    = "path/tf.state"
    region =  "ap-south-1"
    encrypt = true
  }
}