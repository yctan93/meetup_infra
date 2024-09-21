variable "aks_name" {
    type = string
}
variable "location" {
    type = string
}
variable "resource_group_name" {
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