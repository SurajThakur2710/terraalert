nrql_alert_conditions = {
  cpu = {
    name                 = "CPU Usage Alert"
    entity_guid          = "your_cpu_entity_guid"
    query                = "SELECT average(cpuPercent) FROM ProcessSample WHERE entityGuid = NDQzODI2OXxJTkZSQXxOQXwzNzQ2ODI4MDc1NjY0MzgwMzgz"
    critical_threshold   = 90
    warning_threshold    = 0
    create_critical_block = true
    create_warning_block  = false
  }
}

policy_name = "Leo"