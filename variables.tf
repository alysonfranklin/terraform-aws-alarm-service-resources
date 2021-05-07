variable "create" {
  type        = bool
  default     = true
  description = "Defines if alarm should be created"
}

variable "treat_missing_data" {
  type        = string
  default     = "breaching"
  description = "What happens to the alarm if no data points are received. One of 'missing', 'ignore', 'breaching' and 'notBreaching'"
}

variable "datapoints_to_alarm" {
  type        = number
  default     = 3
  description = "The number of datapoints that must be breaching to trigger the alarm"
}

variable "evaluation_periods" {
  type        = number
  default     = 3
  description = "The number of periods over which data is compared to the specified threshold"
}

variable "period" {
  type        = number
  default     = 300
  description = "The period in seconds over which the specified statistic is applied"
}

variable "cpu_utilization_threshold" {
  type        = number
  default     = 95
  description = "Average of cpu utilization to not be exceeded. Consider keeping some headroom."
}

variable "memory_utilization_threshold" {
  type        = number
  default     = 95
  description = "Average of memory utilization to not be exceeded. Consider keeping some headroom."
}
