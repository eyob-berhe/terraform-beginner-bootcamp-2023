module "terrahouse_aws" {
  source = "./modules/terrahous_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}

