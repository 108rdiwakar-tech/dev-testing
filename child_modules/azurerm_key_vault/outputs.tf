output "key_vault_id" {
  description = "ID of the Key Vault"
  value       = azurerm_key_vault.kv.id
}

output "key_vault_uri" {
  description = "URI of the Key Vault"
  value       = azurerm_key_vault.kv.vault_uri
}

output "vm_password_secret_value" {
  description = "Generated VM Admin Password value"
  value       = try(random_password.vm_password[0].result, "")
  sensitive   = true
}

output "vm_password_secret_id" {
  description = "ID of the VM password secret in Key Vault"
  value       = try(azurerm_key_vault_secret.vm_secret[0].id, "")
}
