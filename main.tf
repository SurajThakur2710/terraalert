resource "newrelic_alert_policy" "duo" {
  name = var.policy_name
  incident_preference = "PER_POLICY"
}

resource "newrelic_nrql_alert_condition" "one" {
  for_each = var.nrql_alert_conditions
  account_id = 4438269
  policy_id = newrelic_alert_policy.duo.id
  type = "static"
  name = each.value.name
  description                    = "Alert when transactions are taking too long"
  # runbook_url                    = "https://www.example.com"
  enabled                        = true
  violation_time_limit_seconds   = 3600
  fill_option                    = "static"
  fill_value                     = 1.0
  aggregation_window             = 60
  aggregation_method             = "event_flow"
  aggregation_delay              = 120
  expiration_duration            = 120
  open_violation_on_expiration   = true
  close_violations_on_expiration = true
  slide_by                       = 30

  nrql {
    query = each.value.query
  }
  
  dynamic "critical" {
  for_each = each.value.create_critical_block ? [1] :[]
  content {
      operator              = "above"
      threshold             = each.value.critical_threshold
      threshold_duration    = 300
      threshold_occurrences = "ALL"
    }
  }

  dynamic "warning" {
   for_each = each.value.create_warning_block ? [1] :[]
   content {
      operator              = "above"
      threshold             = each.value.warning_threshold
      threshold_duration    = 300
      threshold_occurrences = "ALL"
   }
  }


}
