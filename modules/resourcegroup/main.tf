resource "azurerm_resource_group" "rgblk-hubnspoke" {
    for_each =  var.rg
    name = each.value.name
    location = each.value.location
    tags = each.value.tags
}