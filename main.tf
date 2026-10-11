data "mongodbatlas_ai_model_rate_limits" "ai_model_rate_limits_lookup" {
  for_each = var.ai_model_rate_limits_lookup

  project_id = each.value.project_id
}

