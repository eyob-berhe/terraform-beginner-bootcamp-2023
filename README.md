# Terraform Beginner Bootcamp 2023

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