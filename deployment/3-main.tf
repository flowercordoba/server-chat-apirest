terraform {
  backend "s3" {
    bucket  = "example-app-terraform-state" # Your unique AWS S3 bucket
    key     = "develop/example.tfstate"
    region  = "us-west-2" # Your AWS region
    encrypt = true
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"

  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    ManagedBy   = "Terraform"
    Owner       = "Flower Lewyn Cordoba Moreno" # Your fullname
  }
}
