output "cloudwatch_log_group_name" {
  description = "Name of Cloudwatch log group"
  value       = module.cloudwatch_log-group.cloudwatch_log_group_name
}

output "cloudwatch_log_group_arn" {
  description = "ARN of Cloudwatch log group"
  value       = module.cloudwatch_log-group.cloudwatch_log_group_arn
}

