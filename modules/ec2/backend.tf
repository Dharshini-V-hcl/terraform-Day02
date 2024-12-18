terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "ec2/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}