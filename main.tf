module "short_label" {
  source  = "applike/label/aws"
  version = "1.1.0"

  application = ""

  context = module.this.context
}

resource "aws_cloudwatch_metric_alarm" "average-resource-cpu" {
  count               = module.this.enabled ? 1 : 0
  alarm_name          = "${module.this.family}-${module.this.application}-average-cpu-high"
  namespace           = "AWS/ECS"
  metric_name         = "CPUUtilization"
  statistic           = "Average"
  treat_missing_data  = var.treat_missing_data
  comparison_operator = "GreaterThanThreshold"
  threshold           = var.average_resource_cpu_threshold
  period              = var.average_resource_period
  evaluation_periods  = var.average_resource_evaluation_periods
  datapoints_to_alarm = var.average_resource_datapoints_to_alarm

  dimensions = {
    ClusterName = module.short_label.id
    ServiceName = module.this.application
  }

  alarm_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-alarm"]
  ok_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-alarm"]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "average-resource-memory" {
  count               = module.this.enabled ? 1 : 0
  alarm_name          = "${module.this.family}-${module.this.application}-average-memory-high"
  namespace           = "AWS/ECS"
  metric_name         = "MemoryUtilization"
  statistic           = "Average"
  treat_missing_data  = var.treat_missing_data
  comparison_operator = "GreaterThanThreshold"
  threshold           = var.average_resource_memory_threshold
  period              = var.average_resource_period
  evaluation_periods  = var.average_resource_evaluation_periods
  datapoints_to_alarm = var.average_resource_datapoints_to_alarm

  dimensions = {
    ClusterName = module.short_label.id
    ServiceName = module.this.application
  }

  alarm_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-alarm"]
  ok_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-alarm"]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "maximum-resource-cpu" {
  count               = module.this.enabled ? 1 : 0
  alarm_name          = "${module.this.family}-${module.this.application}-maximum-cpu-high"
  namespace           = "AWS/ECS"
  metric_name         = "CPUUtilization"
  statistic           = "Maximum"
  treat_missing_data  = var.treat_missing_data
  comparison_operator = "GreaterThanThreshold"
  threshold           = var.maximum_resource_cpu_threshold
  period              = var.maximum_resource_period
  evaluation_periods  = var.maximum_resource_evaluation_periods
  datapoints_to_alarm = var.maximum_resource_datapoints_to_alarm

  dimensions = {
    ClusterName = module.short_label.id
    ServiceName = module.this.application
  }

  alarm_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-info"]
  ok_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-info"]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "maximum-resource-memory" {
  count               = module.this.enabled ? 1 : 0
  alarm_name          = "${module.this.family}-${module.this.application}-maximum-memory-high"
  namespace           = "AWS/ECS"
  metric_name         = "MemoryUtilization"
  statistic           = "Maximum"
  treat_missing_data  = var.treat_missing_data
  comparison_operator = "GreaterThanThreshold"
  threshold           = var.maximum_resource_memory_threshold
  period              = var.maximum_resource_period
  evaluation_periods  = var.maximum_resource_evaluation_periods
  datapoints_to_alarm = var.maximum_resource_datapoints_to_alarm

  dimensions = {
    ClusterName = module.short_label.id
    ServiceName = module.this.application
  }

  alarm_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-info"]
  ok_actions = [
  "arn:aws:sns:eu-central-1:164105964448:${module.short_label.id}-info"]

  tags = module.this.tags
}
