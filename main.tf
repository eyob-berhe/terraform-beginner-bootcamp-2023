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


resource "random_string" "bucket_name" {
  length   = 16
  upper = false
  special  = false
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name.result


}

output "random_bucket_name" {
  value = random_string.bucket_name.result
}
