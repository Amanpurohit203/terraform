terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.30.0"
    }
  }
  backend "s3" {
    bucket="aman-terrastate-bucket"
    key="terraform.tfstate"
    region ="eu-west-1"
    use_lockfile   = true
  }
}