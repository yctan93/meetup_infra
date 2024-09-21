module "web-kv"{
    source = "../modules/key_vault"
    kv_name = var.kv_web_name
    location = var.location
    resource_group_name = module.rg-web.rg_name
    enabled_for_disk_encryption = var.enabled_for_disk_encryption
    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
    sku_name = var.sku_name
    key_permissions = var.key_permissions
    secret_permissions = var.secret_permissions
    storage_permissions = var.storage_permissions
}

module "app-kv"{
    source = "../modules/key_vault"
    kv_name = var.kv_app_name
    location = var.location
    resource_group_name = module.rg-web.rg_name
    enabled_for_disk_encryption = var.enabled_for_disk_encryption
    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
    sku_name = var.sku_name
    key_permissions = var.key_permissions
    secret_permissions = var.secret_permissions
    storage_permissions = var.storage_permissions
}