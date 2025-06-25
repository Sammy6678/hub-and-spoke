output "subnet_ids" {
    description = "subnet ids"
    value = { for k, v in azurerm_subnet.subnet-blk : k => v.id } 
}