variable "route_table_name" {
    type = string
}
variable "location" {
    type = string
}
variable "resource_group_name" {
    type = string
}
variable "route" {
    type = map(object({
        name = string
        address_prefix = string
        next_hop_type = string
    }))
}
variable "subnet_id" {
    type = string
}