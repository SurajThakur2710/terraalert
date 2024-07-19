nrql_alert_conditions = {
 Disk = {
    name                 = "Disk Usage Alert"
    entity_guid          = "your_disk_entity_guid"
    query                = "SELECT average(diskUsedPercent) FROM StorageSample WHERE entityGuid = NDQzODI2OXxJTkZSQXxOQXwzNzQ2ODI4MDc1NjY0MzgwMzgz"
    critical_threshold   = 85
    warning_threshold    = 70
    create_critical_block = true
    create_warning_block  = true
  }
}

policy_name = "Leo"