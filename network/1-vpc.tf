#Create AWS VPC
resource "aws_vpc" "demo-vpc" {
  cidr_block           = var.VPC_CIDR_BLOCK
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "${var.VPC_NAME}"
  }
}

# Public Subnets in Custom VPC
resource "aws_subnet" "public-subnet-A" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.SUBNET_IPS[0]
  map_public_ip_on_launch = "true"
  availability_zone       = var.AVAILABILITY_ZONES[0]

  tags = {
    Name = "${var.SUBNET_NAMES[0]}"
  }
}

resource "aws_subnet" "public-subnet-B" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.SUBNET_IPS[1]
  map_public_ip_on_launch = "true"
  availability_zone       = var.AVAILABILITY_ZONES[1]

  tags = {
    Name = "${var.SUBNET_NAMES[1]}"
  }
}

# Private Subnets in Custom VPC
resource "aws_subnet" "private-subnet-A" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.SUBNET_IPS[2]
  map_public_ip_on_launch = "false"
  availability_zone       = var.AVAILABILITY_ZONES[0]

  tags = {
    Name = "${var.SUBNET_NAMES[2]}"
  }
}

resource "aws_subnet" "private-subnet-B" {
  vpc_id                  = aws_vpc.demo-vpc.id
  cidr_block              = var.SUBNET_IPS[3]
  map_public_ip_on_launch = "false"
  availability_zone       = var.AVAILABILITY_ZONES[1]

  tags = {
    Name = "${var.SUBNET_NAMES[3]}"
  }
}
