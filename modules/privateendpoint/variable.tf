variable "private_endpoint" {
description = "private_endpoint variable"
type = map(object({
   name = string
   location = string
   resource_group_name = string
   subnet_id = string

    private_service_connection = object({
     name = string
      private_connection_resource_id = string
      subresource_names = list(string)
    })}))
}

variable "private_dns" {
    description = "private dns variable"
    type = map(object({
      name = string
      resource_group_name = string 
    }))
 
}

variable "stg_data" {}

variable "service_id" {}

variable "subnet_ids" {
  
}