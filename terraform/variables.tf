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

variable "location" {
    type = string
}

