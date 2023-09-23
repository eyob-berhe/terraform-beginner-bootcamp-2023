terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
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
