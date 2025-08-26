resource "azurerm_linux_virtual_machine" "azlvm" {
  name = "ubuntu-ci"
  resource_group_name = var.resource_group_name
  location = var.resource_group_location
  size = "Standard_D2s_v3"
  admin_username = var.admin_username
  network_interface_ids = [
    data.azurerm_network_interface.azni.id
  ]

  admin_ssh_key {
    username = "avi04"
    public_key = file("../../ubuntu_key_pub.pub")
  }

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }
}