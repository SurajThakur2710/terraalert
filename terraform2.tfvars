nrql_alert_conditions= {
Memory ={
    name                 = "Memory Usage Alert"
    entity_guid          = "your_memory_entity_guid"
    query                = "SELECT average(memoryUsedBytes/memoryTotalBytes*100) AS 'memoryPercent' FROM ProcessSample WHERE entityGuid = NDQzODI2OXxJTkZSQXxOQXwzNzQ2ODI4MDc1NjY0MzgwMzgz"
    critical_threshold   = 0
    warning_threshold    = 70
    create_critical_block = false
    create_warning_block  = true
}
}


policy_name = "Leo"