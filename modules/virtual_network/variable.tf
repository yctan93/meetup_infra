variable "name" {
    type = string
}

variable "location" {
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "address_space" {
    type = list(string)
}

variable "subnet" {
    type = map(object({
        name = string
        address_prefix = string
    }))
}