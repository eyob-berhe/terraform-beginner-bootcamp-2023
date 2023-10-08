# Terraform Beginner Bootcamp 2023 - week 0

## Table of content

- [Semantic Versioning](#semantic-versioning)
- [Install Terraform CLI](#install-terraform-cli)
- [Terraform Cloud](#terraform-cloud-store-teraformstatefile)

- [Semantic Versioning](#semantic versioniong)
- [Install Terraform CLI]

## Semantic Versioning

This project us going to utilize sementic versioning for its tagging.
[semvec.org](https://semvec.org/)

The general fornat:

**MAJOR.MINOR.PATCH**, eg. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes


https://en.wikipedia.org/wiki/Shebang_(Unix)

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

[Getting Started Install (AWS CLI)](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)



[AWS CLI env vars](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

We can check if our AWS credentiual is configured correctly by running the following AWS CLI command
```sh
aws sts get-caller-identity
```

If it is successfuly you should see a jayson payload return
looks like this:

```json
{
    "UserId": "AIZAXV2ZZJ4LNPELJRBLF",
    "Account": "012345678901",
    "Arn": "arn:aws:iam::012345678901:user/terraform-admin"
}
```

## Install Terraform CLI 
Terraform is an open-source infrustructure as code (Iac) tool develop by HashiCorp

## Terraform Registry
Terraform has concept of a "registry" Where providers and modules are published and shared.

## Terraform Lock Files
.terraform.lock.hcl contains the locked versioning for the providers or modulues that should be used with this project.
## Terraform State Files
.terraform.tfstate contain information about the current state of your infrastructure.

## Terraform  Directory
.terrafom diractory contains binaries of terraform providers

### terraform init 
The pupropse of terraform init is to initialize a terraform configuration.
### terraform plan
After initialized the configuration, the command is used to create an execution plan
### terraform validate
The purpose of 'terraform vcalidate' is to check the synatax and structure of terraform conficuration files.
### terraform apply
Once you have reviewed the plaln and generated by 'terraform plan' and are satisfies with the changes it purposes, you can apply the changes to the infrustructure using the command.
### terraform destroy
The command is used to destroy the resourse created by terraform

## Terraform Cloud store teraform.statefile
- Create Terraform Organization
- Create configeration file that define the resources you want to create
```
{
  "credentials": {
    "app.terraform.io": {
      "token": "Insert terraform key"
    }
  }
}
```
- Initialize Terraform
- Configure Terraform Cloud to store the state file
- Store AWS Access key and Secret key in Terraform Cloud Varialbles section
