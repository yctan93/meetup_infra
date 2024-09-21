module "mssql-server"{
    source = "../modules/mssql_server"
    mssql_name = var.mssql_name
    resource_group_name = module.rg-app.rg_name
    location = var.location
    administrator_login = file("./credentials/mssql_server_login") # To replace with secret created in keyvault
    administrator_login_password = file("./credentials/mssql_server_login_password") # To replace with secret created in keyvault
}

module "mssql-db" {
    source = "../modules/mssql_database"
    mssql_db_name = var.mssql_db_name
    server_id = module.mssql-server.mssql_server_id
    collation = var.collation
    license_type = var.license_type
    max_size_gb = var.max_size_gb
    sku_name = var.mssql_db_sku_name
    enclave_type  = var.enclave_type 
}