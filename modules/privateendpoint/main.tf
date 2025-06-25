resource "azurerm_private_endpoint" "private-blk"{
    for_each = var.private_endpoint
    name = each.value.name
    location = each.value.location 
    resource_group_name = each.value.resource_group_name
    subnet_id = var.subnet_ids[each.value.subnet_name]


    private_service_connection {
    name = "${each.key}-private-connection"
   is_manual_connection = "false"
   private_connection_resource_id = var.service_id
   subresource_names = each.value.subresource_names
   }
}

#resource "azurerm_private_dns_zone" "dns-blk" {
   # for_each = var.private_dns
  #  name = each.value.dns_zone_name
   # resource_group_name = each.value.resource_group_name
#}

