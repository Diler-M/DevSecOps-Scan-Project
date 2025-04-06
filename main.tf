provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-statefile-diler" {
  bucket = "terraform-statefile-diler"
}
terraform {
  backend "s3" {
    bucket         = "terraform-statefile-diler"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}