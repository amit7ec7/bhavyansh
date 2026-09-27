resource "azurerm_virtual_machine" "vm" {
  for_each = var.vm_name
  name                  = each.value.name
  location              = var.resource_groups[each.value.rg].location
  resource_group_name   = var.resource_groups[each.value.rg].name
  network_interface_ids = [var.nics[each.value.nic].id]
  vm_size               = "Standard_D2s_v3"


  storage_image_reference {
    publisher = "Canonical"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}