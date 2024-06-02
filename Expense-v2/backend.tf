terraform {
  backend "s3" {
    bucket = "terraformstatefiles-aditya"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
