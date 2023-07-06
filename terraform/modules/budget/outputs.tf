output "budget_alarm_id" {
  description = "ID of the created Budget alarm"
  value       = aws_cloudwatch_metric_alarm.budget_alarm.id
}