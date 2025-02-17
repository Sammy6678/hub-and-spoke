    output "storage_account_id" {
        description = "storage account_id"
        value = { for k , v in azurerm_storage_account.stg-blk : k => v.id }
    }
