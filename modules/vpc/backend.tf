terraform {
  backend "s3" {
    bucket         = "terrastate-file-learning"
    key            = "vpc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-learning"
    encrypt        = true
  }
}
