output "vm_id" {
  description = "ID of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "Name of the Virtual Machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "admin_username" {
  description = "Administrator username for the VM"
  value       = azurerm_linux_virtual_machine.vm.admin_username
}
