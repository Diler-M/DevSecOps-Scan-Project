provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform_statefile" {
  bucket = "terraform_statefile"
}