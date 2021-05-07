variable "treat_missing_data" {
  type        = string
  default     = "breaching"
  description = "What happens to the alarm if no data points are received. One of 'missing', 'ignore', 'breaching' and 'notBreaching'"
}

variable "average_resource_datapoints_to_alarm" {
  type        = number
  default     = 3
  description = "The number of datapoints that must be breaching to trigger the alarm"
}

variable "average_resource_evaluation_periods" {
  type        = number
  default     = 3
  description = "The number of periods over which data is compared to the specified threshold"
}

variable "average_resource_period" {
  type        = number
  default     = 300
  description = "The period in seconds over which the specified statistic is applied"
}

variable "average_resource_cpu_threshold" {
  type        = number
  default     = 95
  description = "Average of cpu utilization to not be exceeded. Consider keeping some headroom."
}

variable "average_resource_memory_threshold" {
  type        = number
  default     = 95
  description = "Average of memory utilization to not be exceeded. Consider keeping some headroom."
}

variable "maximum_resource_datapoints_to_alarm" {
  type        = number
  default     = 3
  description = "The number of datapoints that must be breaching to trigger the alarm"
}

variable "maximum_resource_evaluation_periods" {
  type        = number
  default     = 10
  description = "The number of periods over which data is compared to the specified threshold"
}

variable "maximum_resource_period" {
  type        = number
  default     = 60
  description = "The period in seconds over which the specified statistic is applied"
}

variable "maximum_resource_cpu_threshold" {
  type        = number
  default     = 150
  description = "maximum of cpu utilization to not be exceeded. Consider keeping some headroom."
}

variable "maximum_resource_memory_threshold" {
  type        = number
  default     = 150
  description = "maximum of memory utilization to not be exceeded. Consider keeping some headroom."
}
