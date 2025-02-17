variable "vnet" {
    description = "vnet variable"
    type = map(object({
        name = string
        location = string
        resource_group_name = string
        address_space = list(string)
        tags = optional(map(string))
    }))
}

variable "subnet" {
    description = "subnet variable "
  type = map(object({
    name = string
    virtual_network_name = string
    resource_group_name = string
    address_prefixes = list(string)
    tags = optional(map(string))
  }))
}

variable "nic" {
    description = "network interface card variable"
    type = map(object({
      name = string
      location = string
      resource_group_name = string

      ip_configuration = object({
        name = string
        subnet_name = string 
        private_ip_address_allocation = string
      })
    }))
}
