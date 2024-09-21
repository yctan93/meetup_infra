# Resource group
variable "rg_web_name" {
    type = string
}

variable "rg_app_name" {
    type = string
}

# Virtual network
variable "vnet_web_name" {
    type = string
}

variable "vnet_web_address_space" {
    type = list(string)
}

variable "subnet_web" {
    type = map(object({
        name = string
        address_prefix = string
    }))
}

variable "vnet_app_name" {
    type = string
}

variable "vnet_app_address_space" {
    type = list(string)
}

variable "subnet_app" {
    type = map(object({
        name = string
        address_prefix = string
    }))
}

# AKS
variable "aks_name" {
    type = string
}
variable "dns_prefix_private_cluster" {
    type = string
}
variable "private_cluster_enabled" {
    type = bool
}
variable "default_node_pool_name" {
    type = string
}
variable "default_node_pool_count" {
    type = number
}
variable "default_node_pool_vm_size" {
    type = string
}
variable "identity_type" {
    type = string
}

# Key vault 
variable "kv_web_name" {
    type = string
}
variable "kv_app_name" {
    type = string
}
variable "enabled_for_disk_encryption" {
    type = bool
}
variable "soft_delete_retention_days" {
    type = number
}
variable "purge_protection_enabled" {
    type = bool
}
variable "sku_name" {
    type = string
}
variable "key_permissions" {
    type = list(string)
}
variable "secret_permissions" {
    type = list(string)
}
variable "storage_permissions" {
    type = list(string)
}

# MSSQL Server
variable "mssql_name" {
    type = string
}

# MSSQL Database
variable "mssql_db_name" {}
variable "collation" {}
variable "license_type" {}
variable "max_size_gb" {}
variable "mssql_db_sku_name" {}
variable "enclave_type" {}

variable "location" {
    type = string
}

