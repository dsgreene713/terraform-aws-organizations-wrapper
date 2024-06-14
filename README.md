# tf-aws-organizations
terraform module to streamline management of aws organizations

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.32 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.32 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_organizational_unit.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accounts"></a> [accounts](#input\_accounts) | map of account(s) to be provisioined | <pre>map(object({<br>    email                      = string<br>    close_on_deletion          = optional(bool, false)<br>    create_govcloud            = optional(bool, false)<br>    iam_user_access_to_billing = optional(string, "ALLOW")<br>    parent_ou_name             = optional(string)<br>    role_name                  = optional(string)<br>    tags                       = optional(map(string), {})<br>  }))</pre> | n/a | yes |
| <a name="input_organizational_units"></a> [organizational\_units](#input\_organizational\_units) | map of ou(s) to be provisioned | <pre>map(object({<br>    parent_id = string<br>    tags      = optional(map(string), {})<br>  }))</pre> | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
