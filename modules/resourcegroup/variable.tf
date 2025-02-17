variable "rg" {
    description = "value of resource group"
    type = map(object({
        name = string
        location = string
        tags = optional(map(string)) 
    }))
}