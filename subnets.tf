resource "aws_subnet" "eks_public_subnets" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.eks-vpc.id
  cidr_block              = element(var.public_subnets, count.index)
  map_public_ip_on_launch = true
  availability_zone       = element(var.public_az, count.index)

  tags = {
    "Name" = "${var.env}-publicsubnets-${element(var.public_az, count.index+1)}"
  }
}

resource "aws_subnet" "eks_private_subnets" {
  count             = length(var.private_subnets)
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = element(var.private_subnets, count.index)
  availability_zone = element(var.private_az, count.index)

  tags = {
    "Name" = "${var.env}-privatesubnets-${element(var.private_az, count.index+1)}"
  }
}