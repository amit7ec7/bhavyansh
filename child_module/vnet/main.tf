resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet_name
  name                = each.value.name
  location            = var.resource_groups[each.value.rg].location
  resource_group_name = var.resource_groups[each.value.rg].name
  address_space       = each.value.address_space
}
