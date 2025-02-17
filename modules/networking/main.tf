resource "azurerm_virtual_network" "vnet-blk" {
    for_each = var.vnet
    name = each.value.name 
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
    tags = each.value.tags
}

resource "azurerm_subnet" "subnet-blk" {
  for_each = var.subnet
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes = each.value.address_prefixes
}

resource "azurerm_network_interface" "nic-blk" {
    for_each = var.nic
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
      name = each.value.name
      subnet_id = azurerm_subnet.subnet-blk[each.value.ip_configuration.subnet_name].id
      private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
    }
  
}