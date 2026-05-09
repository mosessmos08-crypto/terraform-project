terraform {
  backend "s3" {
    bucket         = "terraform-info-buck"
    key            = "pr-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}