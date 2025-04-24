provider "aws" {
  region = "us-east-1"
}

module "my_bucket" {
  source = "./Modules/s3_bucket"
  bucket_name = "lab3correction"
}
