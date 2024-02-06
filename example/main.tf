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
