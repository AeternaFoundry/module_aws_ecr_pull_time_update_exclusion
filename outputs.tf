output "ecr_pull_time_update_exclusions_principal_arn" {
  description = "Map of principal_arn values across all ecr_pull_time_update_exclusions, keyed the same as var.ecr_pull_time_update_exclusions"
  value       = { for k, v in aws_ecr_pull_time_update_exclusion.ecr_pull_time_update_exclusions : k => v.principal_arn if v.principal_arn != null && length(v.principal_arn) > 0 }
}
output "ecr_pull_time_update_exclusions_region" {
  description = "Map of region values across all ecr_pull_time_update_exclusions, keyed the same as var.ecr_pull_time_update_exclusions"
  value       = { for k, v in aws_ecr_pull_time_update_exclusion.ecr_pull_time_update_exclusions : k => v.region if v.region != null && length(v.region) > 0 }
}

