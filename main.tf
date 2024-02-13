resource "azurerm_log_analytics_workspace" "law" {
  name                               = var.name
  location                           = var.location
  resource_group_name                = var.resource_group_name
  allow_resource_only_permissions    = try(var.allow_resource_only_permissions, true)
  local_authentication_disabled      = try(var.local_authentication_disabled, false)
  cmk_for_query_forced               = try(var.cmk_for_query_forced, false, null)
  sku                                = var.sku
  retention_in_days                  = try(var.retention_in_days, null)
  reservation_capacity_in_gb_per_day = var.sku == "CapacityReservation" ? var.reservation_capacity_in_gb_per_day : null
  daily_quota_gb                     = title(var.sku) == "Free" ? 0.5 : try(var.daily_quota_gb, null)
  internet_ingestion_enabled         = try(var.internet_ingestion_enabled, null)
  internet_query_enabled             = try(var.internet_query_enabled, null)
  tags                               = try(var.tags, null)
}
