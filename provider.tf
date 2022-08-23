
# the provider is the bridge between terraform and the cloud provider
# terraform provider interfaces with cloud vendor api's t build infrastucture
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
# provider block supplies the info needed to access aws
provider "aws" {
  region                   = "us-west-2"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "kenna"
}