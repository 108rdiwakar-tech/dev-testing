output "nic_id" {
  description = "ID of the Network Interface"
  value       = azurerm_network_interface.nic.id
}

output "nic_name" {
  description = "Name of the Network Interface"
  value       = azurerm_network_interface.nic.name
}

output "private_ip_address" {
  description = "Private IP address assigned to the NIC"
  value       = azurerm_network_interface.nic.private_ip_address
}

output "public_ip_address" {
  description = "Public IP address attached to the NIC (if created)"
  value       = var.create_public_ip ? azurerm_public_ip.pip[0].ip_address : null
}
