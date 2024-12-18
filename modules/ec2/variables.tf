variable "region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default = "ami-01816d07b1128cd2d"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
  default  = "subnet-095bdf9165f52bf0c"
}

variable "key_name" {
  description = "Key name for SSH access"
  type        = string
  default = "my-ssh-key"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default = "Devops-learning"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
  default = "vpc-09c3818abda1800b8"
}
