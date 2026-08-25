variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}

variable "location" {
  description = "Location of the Network Interface"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the Subnet to attach the NIC to"
  type        = string
}

variable "ip_config_name" {
  description = "Name for the IP configuration"
  type        = string
  default     = "internal"
}

variable "private_ip_address_allocation" {
  description = "Private IP address allocation method (Dynamic or Static)"
  type        = string
  default     = "Dynamic"
}

variable "create_public_ip" {
  description = "Whether to create and attach a public IP to the NIC"
  type        = bool
  default     = true
}

variable "public_ip_allocation_method" {
  description = "Public IP allocation method (Static or Dynamic)"
  type        = string
  default     = "Static"
}

variable "tags" {
  description = "Tags for the NIC"
  type        = map(string)
  default     = {}
}
