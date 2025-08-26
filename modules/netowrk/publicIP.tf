resource "azurerm_public_ip" "azip01" {
    name = "default"
    resource_group_name = var.resource_group_name
    location = var.resource_group_location
    allocation_method = "Static"

    tags = {
        name = "default"
    }

    # depends_on = [ azurerm_virtual_network.azvn ]
}

resource "azurerm_public_ip" "azip02" {
  name = "kube"
  resource_group_name = var.resource_group_name
  location = var.resource_group_location
  allocation_method = "Static"

  tags = {
    name = "kube"
  }

  # depends_on = [ azurerm_virtual_network.azvn ]
}