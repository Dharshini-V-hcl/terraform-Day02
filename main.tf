provider "aws" {
  region = "us-east-1"
}
module "vpc" {
  source          = "./modules/vpc"
  cidr_block      = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
}

module "ec2" {
  source          = "./modules/ec2"
  instance_type   = var.instance_type
  ami_id          = var.ami_id
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.public_subnets
}

