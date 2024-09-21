resource "azurerm_mssql_database" "mssql_db" {
  name         = var.mssql_db_name
  server_id    = var.server_id
  collation    = var.collation
  license_type = var.license_type
  max_size_gb  = var.max_size_gb
  sku_name     = var.sku_name
  enclave_type = var.enclave_type
}