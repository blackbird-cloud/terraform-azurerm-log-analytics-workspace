# Azure Log Analytics Workspace Terraform module
A Terraform module which configures your Azure Log Analytics Workspace.  
[![blackbird-logo](https://raw.githubusercontent.com/blackbird-cloud/terraform-module-template/main/.config/logo_simple.png)](https://www.blackbird.cloud)

## Example
```hcl
module "log_analytics_workspace" {
  source  = "blackbird-cloud/log-analytics-workspace/azurerm"
  version = "~> 1"

  create_new_workspace = true
  name                 = "example-law"
  location             = "westeurope"
  resource_group_name  = "example-law"
  tags = {
    environment = "dev"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.8 |

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_workspace.law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_log_analytics_workspace.read_created_law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/log_analytics_workspace) | data source |
| [azurerm_log_analytics_workspace.read_law](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/log_analytics_workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_resource_only_permissions"></a> [allow\_resource\_only\_permissions](#input\_allow\_resource\_only\_permissions) | Whether users require permissions to resources to view logs | `bool` | `true` | no |
| <a name="input_cmk_for_query_forced"></a> [cmk\_for\_query\_forced](#input\_cmk\_for\_query\_forced) | Whether or not a Customer Managed Key for the query is forced | `bool` | `true` | no |
| <a name="input_create_new_workspace"></a> [create\_new\_workspace](#input\_create\_new\_workspace) | Whether or not you wish to create a new workspace, if set to true, a new one will be created, if set to false, a data read will be performed on a data source | `bool` | n/a | yes |
| <a name="input_daily_quota_gb"></a> [daily\_quota\_gb](#input\_daily\_quota\_gb) | The amount of gb set for max daily ingetion | `string` | `""` | no |
| <a name="input_internet_ingestion_enabled"></a> [internet\_ingestion\_enabled](#input\_internet\_ingestion\_enabled) | Whether internet ingestion is enabled | `bool` | `null` | no |
| <a name="input_internet_query_enabled"></a> [internet\_query\_enabled](#input\_internet\_query\_enabled) | Whether or not your workspace can be queried from the internet | `bool` | `null` | no |
| <a name="input_local_authentication_disabled"></a> [local\_authentication\_disabled](#input\_local\_authentication\_disabled) | Whether local authentication is enabled, defaults to false | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The location for this resource to be put in | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of a log analytics workspace | `string` | n/a | yes |
| <a name="input_reservation_capacity_in_gb_per_day"></a> [reservation\_capacity\_in\_gb\_per\_day](#input\_reservation\_capacity\_in\_gb\_per\_day) | The reservation capacity gb per day, can only be used with CapacityReservation SKU | `string` | `""` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | The number of days for retention, between 7 and 730 | `string` | `""` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | The sku of the log analytics workspace | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of the tags to use on the resources that are deployed with this module. | `map(string)` | <pre>{<br>  "source": "terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_law_id"></a> [law\_id](#output\_law\_id) | The  id of the log analytics workspace. If a new log analytic workspace is created, fetch its data id, if one is created, fetch the remote one instead |
| <a name="output_law_name"></a> [law\_name](#output\_law\_name) | The name of the log analytics workspace |
| <a name="output_law_primary_key"></a> [law\_primary\_key](#output\_law\_primary\_key) | The primary key of the log analytics workspace. If a new log analytic workspace is created, fetch its data id, if one is created, fetch the remote one instead |
| <a name="output_law_secondary_key"></a> [law\_secondary\_key](#output\_law\_secondary\_key) | The primary key of the log analytics workspace. If a new log analytic workspace is created, fetch its data id, if one is created, fetch the remote one instead |
| <a name="output_law_workspace_id"></a> [law\_workspace\_id](#output\_law\_workspace\_id) | The workspace id of the log analytics workspace. If a new log analytic workspace is created, fetch its data id, if one is created, fetch the remote one instead |

## About

We are [Blackbird Cloud](https://blackbird.cloud), Amsterdam based cloud consultancy, and cloud management service provider. We help companies build secure, cost efficient, and scale-able solutions.

Checkout our other :point\_right: [terraform modules](https://registry.terraform.io/namespaces/blackbird-cloud)

## Copyright

Copyright © 2017-2023 [Blackbird Cloud](https://www.blackbird.cloud)
