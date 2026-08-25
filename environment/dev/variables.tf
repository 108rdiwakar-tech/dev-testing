variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "VNet CIDR block"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Subnet definitions"
  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "vm_subnet_name" {
  description = "Name of the subnet to connect VM NIC"
  type        = string
}

variable "key_vault_name" {
  description = "Name of the Key Vault (must be globally unique, 3-24 alphanumeric characters)"
  type        = string
}

variable "vm_password_secret_name" {
  description = "Secret name for VM Admin Password"
  type        = string
  default     = "dev-vm-admin-password"
}

variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}

variable "create_public_ip" {
  description = "Whether to create Public IP for NIC"
  type        = bool
  default     = true
}

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "Size of VM SKU"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "tags" {
  description = "Environment Tags"
  type        = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
