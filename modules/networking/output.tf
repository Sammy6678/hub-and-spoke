output "virtual_network_ids" {
    description = "virtual network ids"
    value = { for k, v in azurerm_subnet.subnet-blk : k => v.id } 
}

output "subnet_ids" {
    description = "subnet ids"
    value = { for k, v in azurerm_subnet.subnet-blk : k => v.id } 
}

output "nic_ids" {
    description = "nic ids"
    value = { for k , v in azurerm_network_interface.nic-blk : k => v.id}
}