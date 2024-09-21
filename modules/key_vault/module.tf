resource "azurerm_key_vault" "kv" {
  name                        = var.kv_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = file("./ids/tenant_id")
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name = var.sku_name

#   access_policy {
#     tenant_id = data.azurerm_client_config.tenant_id
#     object_id = data.azurerm_client_config.object_id
#     key_permissions = var.key_permissions
#     secret_permissions = var.secret_permissions
#     storage_permissions = var.storage_permissions
#   }
}