variable "ai_model_rate_limits_lookup" {
  description = <<EOT
Map of ai_model_rate_limits_lookup, attributes below
Required:
    - project_id
EOT

  type = map(object({
    project_id = string
  }))
}

