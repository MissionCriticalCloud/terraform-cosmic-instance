variable "disk_controller" {
  type        = string
  default     = null
  description = "Disk controller type"
}

variable "disk_offering" {
  type        = string
  default     = null
  description = "Disk offering to default to"
}

variable "disks" {
  type        = map(any)
  default     = {}
  description = "Map of additional disks to create and attach"
}

variable "ip_address" {
  type        = string
  default     = null
  description = "Instance IP address"
}

variable "name" {
  type        = string
  description = "Instance name"
}

variable "network_id" {
  type        = string
  description = "Network name"
}

variable "os_type" {
  type        = string
  description = "Instance OS (\"linux\" or \"windows\")"

  validation {
    condition     = lower(var.os_type) == "linux" || lower(var.os_type) == "windows"
    error_message = "The os_type value must be \"linux\" or \"windows\"."
  }
}

variable "root_disk_size" {
  type        = string
  default     = null
  description = "Root disk size (in GB)"
}

variable "service_offering" {
  type        = string
  default     = null
  description = "Cosmic service offering"
}

variable "template" {
  type        = string
  description = "Instance template name"
}

variable "user_data" {
  type        = string
  default     = null
  description = "Instance user data"
}

variable "affinity_group_ids" {
  description = "Host affinity group IDs if required for the instance"
  type        = list(string)
  default     = []
}
