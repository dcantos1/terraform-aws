provider "aws" {
  region = "us-east-1"
  # access_key = ""
  # secret_key = ""
  #shared_credentials_files = ".aws/credentials"
 # shared_credentials_files = "%USERPROFILE%/.aws/credentials"
}

terraform {
  backend "s3" {
    bucket  = "training-tfstate-terra"
    region  = "us-east-1"
    encrypt = true
    key     = "proyecto01/deploy.tfstate"
  }
}