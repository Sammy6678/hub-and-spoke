variable "stg" {
 description = "stroage account inputs"
type = map(object({
    name = string
    location = string
    resource_group_name = string
    account_tier = string 
    account_replication_type = string
    tags = optional(map(string))
})) 
}