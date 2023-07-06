resource "aws_cloudwatch_metric_alarm" "budget_alarm" {
  alarm_name          = "${var.prefix}-${var.budget_alarm_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.budget_evaluation_periods
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 86400 # 1 day
  statistic           = "Maximum"
  threshold           = var.budget_threshold
  alarm_description   = var.budget_alarm_description
  alarm_actions       = [var.budget_alarm_sns_topic_arn]
}