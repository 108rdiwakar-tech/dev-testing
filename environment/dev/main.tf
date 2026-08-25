module "resource_group" {
  source              = "../../child_modules/azurerm_resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "virtual_network" {
  source              = "../../child_modules/azurerm_virtual_network"
  vnet_name           = var.vnet_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = var.tags
}

module "key_vault" {
  source                  = "../../child_modules/azurerm_key_vault"
  key_vault_name          = var.key_vault_name
  location                = module.resource_group.resource_group_location
  resource_group_name     = module.resource_group.resource_group_name
  generate_vm_password    = true
  vm_password_secret_name = var.vm_password_secret_name
  tags                    = var.tags
}

module "network_interface" {
  source              = "../../child_modules/azurerm_network_interface"
  nic_name            = var.nic_name
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.virtual_network.subnet_ids[var.vm_subnet_name]
  create_public_ip    = var.create_public_ip
  tags                = var.tags
}

module "virtual_machine" {
  source                = "../../child_modules/azurerm_virtual_machine"
  vm_name               = var.vm_name
  location              = module.resource_group.resource_group_location
  resource_group_name   = module.resource_group.resource_group_name
  vm_size               = var.vm_size
  admin_username        = var.admin_username
  admin_password        = module.key_vault.vm_password_secret_value
  network_interface_ids = [module.network_interface.nic_id]
  tags                  = var.tags
}
