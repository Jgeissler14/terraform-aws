output "iam_user_names" {
  description = "List of created IAM user names"
  value       = [for user in aws_iam_user.admin_users : user.name]
}

output "iam_user_role_arns" {
  description = "Map of IAM user names and their corresponding role ARNs"
  value       = { for user, role in var.admin_users : user => aws_iam_user_policy_attachment.admin_user_attachments[user].policy_arn }
}