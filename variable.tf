variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
type = string 
default = "ami-01816d07b1128cd2d"
}



