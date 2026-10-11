output "ai_model_rate_limits_lookup_project_id" {
  description = "Map of project_id values across all ai_model_rate_limits_lookup, keyed the same as var.ai_model_rate_limits_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_ai_model_rate_limits.ai_model_rate_limits_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "ai_model_rate_limits_lookup_results" {
  description = "Map of results values across all ai_model_rate_limits_lookup, keyed the same as var.ai_model_rate_limits_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_ai_model_rate_limits.ai_model_rate_limits_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

