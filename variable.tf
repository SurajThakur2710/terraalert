variable "policy_name" {
  type = string
  description = "policy_name"
  
}

variable "nrql_alert_conditions" {
  description = "Map of NRQL alert conditions"
  type = map(object({
    name                  = string
    entity_guid           = string
    query              = string
    critical_threshold    = number
    warning_threshold     = number
    create_critical_block = bool
    create_warning_block  = bool
  }))
  default = {}
}




