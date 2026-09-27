resource "azurerm_storage_account" "strg" {
  for_each                 = var.strg_name
  name                     = each.value.name
  resource_group_name      = var.resource_groups[each.value.rg].name
  location                 = var.resource_groups[each.value.rg].location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
