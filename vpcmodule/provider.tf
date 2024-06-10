terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region_name

  default_tags {
  tags = {
    "Application" = "Kubernetes"
    "Tool" = "Terragrunt"
  }
}


}