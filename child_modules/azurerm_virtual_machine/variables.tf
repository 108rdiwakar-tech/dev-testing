variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "location" {
  description = "Location of the Virtual Machine"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "vm_size" {
  description = "Size of the Virtual Machine SKU"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Administrator password for the VM"
  type        = string
  sensitive   = true
}

variable "disable_password_authentication" {
  description = "Whether password authentication is disabled"
  type        = bool
  default     = false
}

variable "network_interface_ids" {
  description = "List of Network Interface IDs to attach to the VM"
  type        = list(string)
}

variable "os_disk_caching" {
  description = "OS Disk Caching type"
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_storage_account_type" {
  description = "OS Disk Storage Account type"
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "OS Image Publisher"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "OS Image Offer"
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "OS Image SKU"
  type        = string
  default     = "22_04-lts"
}

variable "image_version" {
  description = "OS Image Version"
  type        = string
  default     = "latest"
}

variable "tags" {
  description = "Tags for the Virtual Machine"
  type        = map(string)
  default     = {}
}
