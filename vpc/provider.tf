provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "nsbl-terraform-state"
    key    = "env/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}