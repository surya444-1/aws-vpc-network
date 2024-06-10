resource "aws_vpc" "eks-vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    "Name" = "${var.env}-vpc"
  }
}