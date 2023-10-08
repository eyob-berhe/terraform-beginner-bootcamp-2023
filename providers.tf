terraform {
  cloud {
    organization = "eyob-terraform"

    workspaces {
      name = "terra-house-1"
    }
  }
  required_providers {
     random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "random" {
  # configuration optional
}