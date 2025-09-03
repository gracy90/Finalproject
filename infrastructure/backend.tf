# infrastructure/backend.tf
# SIMPLIFIED: Basic Terraform backend configuration

terraform {
  backend "s3" {
    # Update this bucket name to your actual S3 bucket for Terraform state
    bucket  = "gracewiredu202512"
    key     = "aws-translate-app/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}