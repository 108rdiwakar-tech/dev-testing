output "resource_group_name" {
  description = "Resource Group Name"
  value       = module.resource_group.resource_group_name
}

output "vnet_id" {
  description = "VNet ID"
  value       = module.virtual_network.vnet_id
}

output "subnet_ids" {
  description = "Subnet IDs Map"
  value       = module.virtual_network.subnet_ids
}

output "key_vault_uri" {
  description = "Key Vault URI"
  value       = module.key_vault.key_vault_uri
}

output "nic_private_ip" {
  description = "NIC Private IP"
  value       = module.network_interface.private_ip_address
}

output "nic_public_ip" {
  description = "NIC Public IP"
  value       = module.network_interface.public_ip_address
}

output "vm_id" {
  description = "Virtual Machine ID"
  value       = module.virtual_machine.vm_id
}

output "vm_name" {
  description = "Virtual Machine Name"
  value       = module.virtual_machine.vm_name
}
