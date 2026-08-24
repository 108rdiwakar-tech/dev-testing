variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
}

variable "location" {
  description = "Location of the Azure Key Vault"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "sku_name" {
  description = "SKU for Key Vault (standard or premium)"
  type        = string
  default     = "standard"
}

variable "enabled_for_disk_encryption" {
  description = "Allow Key Vault to be used for disk encryption"
  type        = bool
  default     = true
}

variable "soft_delete_retention_days" {
  description = "Soft delete retention days"
  type        = number
  default     = 7
}

variable "purge_protection_enabled" {
  description = "Enable purge protection"
  type        = bool
  default     = false
}

variable "generate_vm_password" {
  description = "Whether to generate and store a VM admin password in Key Vault"
  type        = bool
  default     = true
}

variable "vm_password_secret_name" {
  description = "Secret name for the VM admin password"
  type        = string
  default     = "vm-admin-password"
}

variable "tags" {
  description = "Tags for the Key Vault"
  type        = map(string)
  default     = {}
}
