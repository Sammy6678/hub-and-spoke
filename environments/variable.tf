variable "env" {}

variable "sub_id" {
  description = "value of subscription_id"
  type        = string
}

variable "rg" {
  description = "value of resource group"
  type = map(object({
    name     = string
    location = string
  }))
}

variable "stg" {
  description = "stroage account inputs"
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    tags                     = optional(map(string))
  }))
}


variable "vnet" {
  description = "vnet variable"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    tags                = optional(map(string))
  }))
}

variable "subnet" {
  description = "subnet variable "
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
    address_prefixes     = list(string)
    tags                 = optional(map(string))
  }))
}

variable "nic" {
  description = "network interface card variable"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string

    ip_configuration = object({
      name                          = string
      subnet_name                   = string
      private_ip_address_allocation = string
    })
  }))
}

#variable "private_endpoint" {
#description = "private_endpoint variable"
#type = map(object({
    #name = string
    #location = string
    #resource_group_name = string
    #subnet_id = string

    #private_service_connection = object({
    #  name = string
    #  private_connection_resource_id = string
    #  subresource_names = list(string)
    #})}))
#}

#variable "private_dns" {
  #type = map(any)
#}

#variable "stg_data" {}

#variable "service_id" {}

#variable "subnet_ids" {}