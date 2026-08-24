output "vnet_id" {
  description = "ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  description = "Map of created subnet names to subnet IDs"
  value       = { for k, v in azurerm_subnet.subnet : k => v.id }
}
