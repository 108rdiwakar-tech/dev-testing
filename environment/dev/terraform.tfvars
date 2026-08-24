resource_group_name = "rg-dev-monolithic-001"
location            = "East US"

vnet_name          = "vnet-dev-001"
vnet_address_space = ["10.0.0.0/16"]

subnets = {
  "web-subnet" = {
    address_prefixes = ["10.0.1.0/24"]
  }
  "app-subnet" = {
    address_prefixes = ["10.0.2.0/24"]
  }
}

vm_subnet_name = "web-subnet"

key_vault_name          = "kvdevmono25082026"
vm_password_secret_name = "dev-vm-admin-password"

nic_name         = "nic-dev-vm-001"
create_public_ip = true

vm_name        = "vm-dev-001"
vm_size        = "Standard_B1s"
admin_username = "azureuser"

tags = {
  Environment = "dev"
  Project     = "Monolithic"
  ManagedBy   = "Terraform"
}
