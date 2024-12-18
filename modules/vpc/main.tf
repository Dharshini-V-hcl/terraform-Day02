provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnets" {
  count           = length(var.public_subnet_cidrs)
  vpc_id          = aws_vpc.main.id
  cidr_block      = var.public_subnet_cidrs[count.index]
  map_public_ip_on_launch = true
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "${var.vpc_name}-public-${count.index}"
  }
}

resource "aws_subnet" "private_subnets" {
  count           = length(var.private_subnet_cidrs)
  vpc_id          = aws_vpc.main.id
  cidr_block      = var.private_subnet_cidrs[count.index]
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "${var.vpc_name}-private-${count.index}"
  }
}
