# Using private module references in terraform

- SSH key failed: https://stackoverflow.com/a/29380765/9541789
- Trello task 1: https://trello.com/c/lEv89VzJ
- Trello task 2: https://trello.com/c/9NLGTREz
- How to install SSH keys in Azure
  Pipelines: https://dev.to/pwd9000/connect-terraform-to-azure-devops-git-repos-over-ssh-163c

## Pre-commit configuration

- Install python3 via windows store
- `pip install --upgrade pip`
- `pip install pre-commit`
- Update PATH variable
- `pre-commit install`

## Install terraform docs

- `choco install terraform-docs`

## Install tflint

- `choco install tflint`

## Documentation

- https://github.com/antonbabenko/pre-commit-terraform
- https://github.com/kolosovpetro/AzureTerraformBackend
- https://github.com/terraform-docs/terraform-docs
- https://terraform-docs.io/user-guide/installation/
- https://pre-commit.com/

## Storage account configuration file

```bash
storage_account_name = "storage_account_name"
container_name       = "container_name"
key                  = "terraform.tfstate"
sas_token            = "sas_token"
```

## Deploy storage account for terraform state

- See [CreateAzureStorageAccount.ps1](./CreateAzureStorageAccount.ps1)

# Module documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

| Name                                                                | Version |
|---------------------------------------------------------------------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.71.0 |

## Providers

| Name                                                          | Version |
|---------------------------------------------------------------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.71.0  |

## Modules

| Name                                                      | Source                                                               | Version |
|-----------------------------------------------------------|----------------------------------------------------------------------|---------|
| <a name="module_storage"></a> [storage](#module\_storage) | git::git@github.com:kolosovpetro/osds-terraform.git//modules/storage | n/a     |

## Resources

| Name                                                                                                                              | Type        |
|-----------------------------------------------------------------------------------------------------------------------------------|-------------|
| [azurerm_resource_group.public](https://registry.terraform.io/providers/hashicorp/azurerm/3.71.0/docs/resources/resource_group)   | resource    |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.71.0/docs/data-sources/client_config) | data source |

## Inputs

| Name                                                                                                        | Description              | Type     | Default | Required |
|-------------------------------------------------------------------------------------------------------------|--------------------------|----------|---------|:--------:|
| <a name="input_prefix"></a> [prefix](#input\_prefix)                                                        | Prefix for all resources | `string` | n/a     |   yes    |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Resource group location  | `string` | n/a     |   yes    |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)             | Resource group name      | `string` | n/a     |   yes    |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
