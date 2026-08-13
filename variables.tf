variable "guardduty_organization_configurations" {
  description = <<EOT
Map of guardduty_organization_configurations, attributes below
Required:
    - auto_enable_organization_members
    - detector_id
Optional:
    - region
    - datasources (block):
        - kubernetes (optional, block):
            - audit_logs (required, block):
                - enable (required)
        - malware_protection (optional, block):
            - scan_ec2_instance_with_findings (required, block):
                - ebs_volumes (required, block):
                    - auto_enable (required)
        - s3_logs (optional, block):
            - auto_enable (required)
EOT

  type = map(object({
    auto_enable_organization_members = string
    detector_id                      = string
    region                           = optional(string)
    datasources = optional(object({
      kubernetes = optional(object({
        audit_logs = object({
          enable = bool
        })
      }))
      malware_protection = optional(object({
        scan_ec2_instance_with_findings = object({
          ebs_volumes = object({
            auto_enable = bool
          })
        })
      }))
      s3_logs = optional(object({
        auto_enable = bool
      }))
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

