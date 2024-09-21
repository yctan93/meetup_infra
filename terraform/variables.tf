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

# Public IP
variable "pip_name" {}
variable "allocation_method" {}

# Application gateway
variable "appgw_name" {}
variable "appgw_sku_name" {}
variable "appgw_sku_tier" {}
variable "appgw_sku_capacity" {}
variable "gateway_ip_configuration_name" {}
variable "frontend_port_name" {}
variable "frontend_port_port" {}
variable "frontend_ip_configuration_name" {}
variable "backend_address_pool_name" {}
variable "backend_http_settings_name" {}
variable "backend_http_settings_cookie_based_affinity" {}
variable "backend_http_settings_path" {}
variable "backend_http_settings_port" {}
variable "backend_http_settings_protocol" {}
variable "backend_http_settings_request_timeout" {}
variable "http_listener_name" {}
variable "http_listener_protocol" {}
variable "request_routing_rule_name" {}
variable "request_routing_rule_priority" {}
variable "request_routing_rule_type" {}

variable "location" {
    type = string
}

