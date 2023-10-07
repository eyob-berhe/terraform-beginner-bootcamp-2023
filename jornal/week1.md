# Terraform Beginner Bootcamp 2023 - week 1

##Root Module Structure

Our Root Module structure is as follows
```
PROJECT_ROOT
|
├── main.tf - everything else
├── variables.tf - store the structure of input variables
├── providers.tf - define required providers and their configuration
├── output.tf - store our outputs
├── terraform.tfvars - the data of variables we want to load into our Terraform project
└── README.md - required for root modules
```

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)
