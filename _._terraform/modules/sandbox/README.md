# terraform-kypo-sandbox-ci

Terraform module which extends [vydrazde/sandbox/kypo](https://github.com/vydrazde/terraform-kypo-sandbox) to be used in GitLab CI.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kypo"></a> [kypo](#requirement\_kypo) | >= 0.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sandbox"></a> [sandbox](#module\_sandbox) | vydrazde/sandbox/kypo | n/a |

## Resources

| Name | Type |
|------|------|
| [local_file.pool_url](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kypo_endpoint"></a> [kypo\_endpoint](#input\_kypo\_endpoint) | Url to the KYPO CRP instance. | `string` | n/a | yes |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | Url to Git repository with sandbox definition, as obtained by Clone with SSH or HTTPS. | `string` | n/a | yes |
| <a name="input_rev"></a> [rev](#input\_rev) | Git revision of the Git repository from project\_url to use. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pool_url"></a> [pool\_url](#output\_pool\_url) | Url to the created KYPO CRP pool. |
<!-- END_TF_DOCS -->

**Author**: Zdeněk Vydra
