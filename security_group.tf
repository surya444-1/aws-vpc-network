resource "aws_security_group" "default_group" {
  name        = "${var.env}-default-sg"
  vpc_id      = aws_vpc.eks-vpc.id
  description = "Default security group for eks network"

  depends_on = [aws_vpc.eks-vpc]

  tags = {
    "Name" = "${var.env}-default-sg"
  }
}