terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3"{
    #bucket = "sri-remote-state-dev"
    bucket = "sri-remote-state-dev-721995408396-us-east-1-an"
    key    = "roboshop-dev-vpn"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}