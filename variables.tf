variable "allow_resource_only_permissions" {
  type        = bool
  description = "Whether users require permissions to resources to view logs"
  default     = true
}

variable "cmk_for_query_forced" {
  type        = bool
  description = "Whether or not a Customer Managed Key for the query is forced"
  default     = false
}

variable "create_new_workspace" {
  type        = bool
  description = "Whether or not you wish to create a new workspace, if set to true, a new one will be created, if set to false, a data read will be performed on a data source"
}

variable "daily_quota_gb" {
  type        = number
  description = "The amount of gb set for max daily ingetion"
  default     = -1
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "Whether internet ingestion is enabled"
  default     = true
}

variable "internet_query_enabled" {
  type        = bool
  description = "Whether or not your workspace can be queried from the internet"
  default     = true
}

variable "name" {
  type        = string
  description = "The name of a log analytics workspace"
}

variable "sku" {
  type        = string
  description = "The sku of the log analytics workspace"
  default     = "PerGB2018"
}

variable "local_authentication_disabled" {
  type        = bool
  description = "Whether local authentication is enabled, defaults to false"
  default     = false
}

variable "location" {
  description = "The location for this resource to be put in"
  type        = string
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "The reservation capacity gb per day, can only be used with CapacityReservation SKU"
  default     = null
}

variable "retention_in_days" {
  type        = string
  description = "The number of days for retention, between 7 and 730"
  default     = 30
}

variable "resource_group_name" {
  description = "The name of the resource group, this module does not create a resource group, it is expecting the value of a resource group already exists"
  type        = string
  validation {
    condition     = length(var.resource_group_name) > 1 && length(var.resource_group_name) <= 24
    error_message = "Resource group name is not valid."
  }
}

variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "terraform"
  }
}
