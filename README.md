# LAB-3-BrokenScript

# 9:20 Created Folder and Files for Terraform Script

# 9:30 Terraform is installed and GitHub Repository is cloned

# 9:33 ERROR OCCURES *Main.TF is missing a variable*

# 9:35 Main.tf Files are investigated 

# 9:36 Modules/Main.tf has the line *bucket = var.bucket_name*

# 9:37 ISSUE DISCOVERD

# 9:37 Project-Root/Main.tf Contains this line 

provider "aws" {
  region = "us-east-1"
}

module "my_bucket" {
  source = "./modules/s3_bucket"
}


# 9:39 The issue is contained in the module "my_bucket" section. This is the main variable to deploy the S3 bucket, however Modules/main.tf is trying to run *bucket = var.bucket_name* This is causing an issue as Project-Root/Main.tf doesnt contain a name variable

# 9:42 Terraform Registry is searched and found a work around to fix this issue

# 9:43  bucket_name = "Lab3Correction" is added 

# 9:44 updated line

provider "aws" {
  region = "us-east-1"
}

module "my_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = "Lab3Correction"
}

# 9:45 Saved and pushed to main branch 