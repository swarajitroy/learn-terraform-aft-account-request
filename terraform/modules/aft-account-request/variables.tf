variable "account-request-table" {
  type        = string
  description = "name of account-request-table"
  default     = "aft-request"
}

variable "account-request-table-hash" {
  type        = string
  description = "name of account-request-table hash key"
  default     = "id"
}

variable "control_tower_parameters" {
  type = object({
    AccountEmail              = "ulearnuhelpawsaftworkloadaccou@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "workload"
    SSOUserEmail              = "ulearnuhelpawsaftworkloadaccou@gmail.com"
    SSOUserFirstName          = "vended"
    SSOUserLastName           = "account"
  })
}

variable "change_management_parameters" {
  type = object({
    change_requested_by = "HashiCorp Learn"
    change_reason       = "HashiCorp Learn"
  })
}

variable "account_tags" {
  type        = map(any)
  description = "map of account-level tags"
}

variable "custom_fields" {
  type        = map(any)
  description = "map of custom fields defined by the customer"
  default     = {}
}

variable "account_customizations_name" {
  type        = string
  default     = null
  description = "The name of the account customizations to apply"
}

