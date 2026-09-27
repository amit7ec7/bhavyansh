resource "azurerm_public_ip" "pip" {
  for_each = var.pip_name
  name                = each.value.name
  resource_group_name = var.resource_groups[each.value.rg].name
  location            = var.resource_groups[each.value.rg].location
  allocation_method   = "Static"
}