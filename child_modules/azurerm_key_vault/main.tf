data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name                    = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "List", "Create", "Delete"
    ]

    secret_permissions = [
      "Get", "List", "Set", "Delete", "Purge"
    ]

    storage_permissions = [
      "Get", "List"
    ]
  }

  tags = var.tags
}

resource "random_password" "vm_password" {
  count            = var.generate_vm_password ? 1 : 0
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "azurerm_key_vault_secret" "vm_secret" {
  count        = var.generate_vm_password ? 1 : 0
  name         = var.vm_password_secret_name
  value        = random_password.vm_password[0].result
  key_vault_id = azurerm_key_vault.kv.id
}
