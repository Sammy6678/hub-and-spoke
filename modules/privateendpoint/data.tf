#data "azurerm_storage_account" "stg-data" {
  #for_each = var.stg_data
#name = each.value.name
#resource_group_name = each.value.resource_group_name
#}