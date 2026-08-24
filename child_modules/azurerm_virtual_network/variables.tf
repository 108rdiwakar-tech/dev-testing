variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "Location of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Map of subnets to create within the Virtual Network"
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {}
}

variable "tags" {
  description = "Tags for the Virtual Network"
  type        = map(string)
  default     = {}
}
