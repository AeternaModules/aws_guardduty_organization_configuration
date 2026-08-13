output "guardduty_organization_configurations_id" {
  description = "Map of id values across all guardduty_organization_configurations, keyed the same as var.guardduty_organization_configurations"
  value       = { for k, v in aws_guardduty_organization_configuration.guardduty_organization_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "guardduty_organization_configurations_auto_enable_organization_members" {
  description = "Map of auto_enable_organization_members values across all guardduty_organization_configurations, keyed the same as var.guardduty_organization_configurations"
  value       = { for k, v in aws_guardduty_organization_configuration.guardduty_organization_configurations : k => v.auto_enable_organization_members if v.auto_enable_organization_members != null && length(v.auto_enable_organization_members) > 0 }
}
output "guardduty_organization_configurations_datasources" {
  description = "Map of datasources values across all guardduty_organization_configurations, keyed the same as var.guardduty_organization_configurations"
  value       = { for k, v in aws_guardduty_organization_configuration.guardduty_organization_configurations : k => v.datasources if v.datasources != null && length(v.datasources) > 0 }
}
output "guardduty_organization_configurations_detector_id" {
  description = "Map of detector_id values across all guardduty_organization_configurations, keyed the same as var.guardduty_organization_configurations"
  value       = { for k, v in aws_guardduty_organization_configuration.guardduty_organization_configurations : k => v.detector_id if v.detector_id != null && length(v.detector_id) > 0 }
}
output "guardduty_organization_configurations_region" {
  description = "Map of region values across all guardduty_organization_configurations, keyed the same as var.guardduty_organization_configurations"
  value       = { for k, v in aws_guardduty_organization_configuration.guardduty_organization_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

