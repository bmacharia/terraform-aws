terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-remote-state-babuki"
    key            = "level2.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-remote-state"
  }
}

provider "aws" {
  region                   = "us-west-2"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "kenna"
}
