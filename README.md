# terraform-module-template
Repository template for creating new Terraform modules.

Provides the following features for module reliability:
* Linting with `tflint` to enforce general best practices
* Generate README.md with `terraform-docs`
* Github actions to test and validate changes
* Github actions to build, version, and package module
* Semantic versioning provided with [github-tag-action](https://github.com/anothrNick/github-tag-action)
* Github actions for testing and validating changes
* Base filenames adhere to general best practices

Testing and validating changes are done so through simple terraform commands:
* terraform init
* terraform fmt 
* terraform validate 

To keep the template provider agnostic, there is no specific cloud based implementation.

Recommendations for new modules:
1. Extend linting with provider based ruleset depending on resources
2. Create functioning examples under `examples/*`
3. Create `terraform plan` step in validation phase to preview changes under `examples/complete`

## Install 
Fork the repository and enable it as a repository template under `Settings`.

`terraform-docs` requires a custom PAT so README.md changes to the pull request do not block other checks. See the open issue: [#107](https://github.com/terraform-docs/gh-actions/issues/107)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_vra"></a> [vra](#requirement\_vra) | >= 0.3.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vra"></a> [vra](#provider\_vra) | >= 0.3.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vra_cloud_account_vsphere.this](https://registry.terraform.io/providers/vmware/vra/latest/docs/resources/cloud_account_vsphere) | resource |
| [vra_region_enumeration_vsphere.this](https://registry.terraform.io/providers/vmware/vra/latest/docs/data-sources/region_enumeration_vsphere) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accept_self_signed_cert"></a> [accept\_self\_signed\_cert](#input\_accept\_self\_signed\_cert) | Accept self-signed certs? | `bool` | `true` | no |
| <a name="input_capability_tags"></a> [capability\_tags](#input\_capability\_tags) | Capability tags to be applied to the Cloud Account | `list(map(string))` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for the cloud account | `string` | `"Manged by TF - Do not edit!"` | no |
| <a name="input_enabled_datacenters"></a> [enabled\_datacenters](#input\_enabled\_datacenters) | An array of vSphere Datacenters to enable for automation | `list(any)` | n/a | yes |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The FQDN of the vcenter server | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the cloud account | `string` | n/a | yes |
| <a name="input_nsx_manager"></a> [nsx\_manager](#input\_nsx\_manager) | The NSX manager connected to this vCenter | `string` | `""` | no |
| <a name="input_password"></a> [password](#input\_password) | The password for the service account | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The username for the service account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_account"></a> [cloud\_account](#output\_cloud\_account) | n/a |
<!-- END_TF_DOCS -->
