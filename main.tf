module "namespace_label" {
  source  = "applike/label/aws"
  version = "1.1.0"

  delimiter = "/"

  context = module.this.context
}

resource "aws_cloudwatch_metric_alarm" "cpu-utilization" {
  count               = var.create ? 1 : 0
  alarm_name          = "${module.this.family}-${module.this.application}-cpu-utilization-high"
  namespace           = "AWS/ECS"
  metric_name         = "CPUUtilization"
  statistic           = "Average"
  treat_missing_data  = var.treat_missing_data
  comparison_operator = "GreaterThanThreshold"
  threshold           = var.cpu_utilization_threshold
  period              = var.period
  evaluation_periods  = var.evaluation_periods
  datapoints_to_alarm = var.datapoints_to_alarm

  dimensions = {
    ClusterName = "${module.this.project}-${module.this.environment}-${module.this.family}"
    ServiceName = module.this.application
  }

  alarm_actions = [
    "arn:aws:sns:eu-central-1:164105964448:${module.this.project}-${module.this.environment}-${module.this.family}-alarm"]
  ok_actions    = [
    "arn:aws:sns:eu-central-1:164105964448:${module.this.project}-${module.this.environment}-${module.this.family}-alarm"]

  tags = module.this.tags
}

resource "aws_cloudwatch_metric_alarm" "memory-utilization" {
  count               = var.create ? 1 : 0
  alarm_name          = "${module.this.family}-${module.this.application}-memory-utilization-high"
  namespace           = "AWS/ECS"
  metric_name         = "MemoryUtilization"
  statistic           = "Average"
  treat_missing_data  = var.treat_missing_data
  comparison_operator = "GreaterThanThreshold"
  threshold           = var.memory_utilization_threshold
  period              = var.period
  evaluation_periods  = var.evaluation_periods
  datapoints_to_alarm = var.datapoints_to_alarm

  dimensions = {
    ClusterName = "${module.this.project}-${module.this.environment}-${module.this.family}"
    ServiceName = module.this.application
  }

  alarm_actions = [
    "arn:aws:sns:eu-central-1:164105964448:${module.this.project}-${module.this.environment}-${module.this.family}-alarm"]
  ok_actions    = [
    "arn:aws:sns:eu-central-1:164105964448:${module.this.project}-${module.this.environment}-${module.this.family}-alarm"]

  tags = module.this.tags
}
