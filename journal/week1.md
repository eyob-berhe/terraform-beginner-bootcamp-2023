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

### Terraform Cloud Variables

In terraform cloud we can set two kind of variables:
- Environmental Variables: These are secret values that you can set at the organization or workspace level in Terraform Cloud. Environment variables are encrypted and can be used to store sensitive information like API keys, passwords, or any other secrets that your Terraform configurations require. They are typically accessed in your Terraform code using the **TF_VAR_<variable_name>** syntax.
- Terraform variables:These are variables defined within your Terraform configuration files (e.g., .tf files). Terraform variables allow you to parameterize your configurations, making them dynamic and reusable. You can define variables in your configuration and set their values when you run a Terraform plan or apply either by passing them as command-line arguments, using variable files (e.g., terraform.tfvars), or by setting them in Terraform Cloud workspaces.

Both type of variables serve different purposes. Environment variables are used to storing sensitive information securely, while Terraform variables are used for configuring and customizing your infrustracture deployments.

### Loding Terraform Input variables

We can use the `-var` flag to set an input variables or ovveride a variable in the tfvars file eg `terraform -var user_id="my_user_id`

### var-file flag
The `terraform var-file` flag is used to specify a variable file when running Terraform command such as `terraform apply` or `terraform plan`. Variable files are used to provide inpute values for Terraform define into your Terraform configuration files **(`*.tf`)**.

Here is the basic syntax for using the `terraform var-file` flag:
```
terraform [command] -var-file=FILE
```
- `[command]` is the Terraform command you want t o run, sucha as `apply`, `plan`, or `validate`
- `-var-file=FILE` is flag used to specify the path to the variable file `(FILE)` that contains values for your values for your Terraform variables.

### terraform.tfvars
This is the default file to load in terrafoirm variables builk

### auto.tfvars
The `auto.tfvars` file serves a specific purpose in Terraform. When you run Terraform commands like `terraform apply` or `terraform plan`, Terraform automatically loads variable values from `auto.tfvars` if it exists in the same directory as your Terraform configuration files `(*.tf)`.

The primary purpose of `auto.tfvars` is to provide default values for your Terraform variables, making it easier to work with configurations that require some variables to be set but also allow for sensible defaults if those variables are not explicitly defined by the user.

Here's how it works:
1. If you have a variable defined in your Terraform configuration file (e.g., variables.tf) without a default value and without being set in a -var flag or a separate variable file, Terraform will look for the corresponding variable name and value in auto.tfvars.
2. If it finds a matching variable name in auto.tfvars, Terraform will use the value specified in auto.tfvars as the value for that variable.
3. If a variable is not defined in auto.tfvars, Terraform will consider it unset and will prompt you to provide a value when you run a command (e.g., terraform apply).


This mechanism allows you to provide default values for variables in a way that's convenient for users who don't want to specify every variable on the command line or in a separate variable file. It's particularly useful for variables that have sensible default values but can be overridden when needed.

Keep in mind that auto.tfvars should be placed in the same directory as your Terraform configuration files for Terraform to automatically recognize and use it.

## Dealing With Configuration Drift

## What happen if we lose our state fie
If you have lost your Terraform state file, your best course of action is to try to restore it from a backup or, if you were using a remote backend, retrieve the state from there. If the state is lost, and you have no backups or remote storage, you may need to recreate the infrastructure using your Terraform configuration, which can be a time-consuming and error-prone process.


### Fix Missing resource with Terraform import

`terraform import aws_s3_bucket.bucket bucket-name`

### Fix Manual COnfiguration

If someone goes and delete or modifies cloud resource manually through Click-Ops.

If we run Terraform plan is with attempt to put our infrstraucture back into the expected state fixing Configuration Drift

## Fix using Terraform Refresh
```terraform apply -refresh-only -auto-approve```


