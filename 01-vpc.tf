# Create a VPC
resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "EKS VPC"
  }
}

resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.0.0/24"
  availability_zone = var.az-list[0]

  tags = {
    Name = "EKS public 1"
  }
}

resource "aws_subnet" "private-1" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.az-list[0]

  tags = {
    Name = "EKS private 1"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.2.0/24"
  availability_zone = var.az-list[1]

  tags = {
    Name = "EKS public 2"
  }
}

resource "aws_subnet" "private-2" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.3.0/24"
  availability_zone = var.az-list[1]

  tags = {
    Name = "EKS private 2"
  }
}

resource "aws_subnet" "public-3" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.4.0/24"
  availability_zone = var.az-list[2]

  tags = {
    Name = "EKS public 3"
  }
}

resource "aws_subnet" "private-3" {
  vpc_id     = aws_vpc.this.id
  cidr_block = "10.0.5.0/24"
  availability_zone = var.az-list[2]

  tags = {
    Name = "EKS private 3"
  }
}