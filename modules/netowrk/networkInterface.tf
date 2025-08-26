resource "azurerm_network_interface" "aznic" {
  name = "default"
  location = var.resource_group_location
  resource_group_name = var.resource_group_name

  # ip_configuration {
  #   name = "default"
  #   subnet_id = data.azurerm_subnet.azsn01.id
  #   private_ip_address_allocation = "Dynamic"
  #   public_ip_address_id = azurerm_public_ip.azip01.id
  # }

  ip_configuration {
    name = "kube"
    subnet_id = data.azurerm_subnet.azsn02.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.azip02.id
    primary = true
  }

  depends_on = [ 
    azurerm_public_ip.azip01,
    azurerm_public_ip.azip02,
    azurerm_virtual_network.azvn,
    data.azurerm_subnet.azsn01,
    data.azurerm_subnet.azsn02
  ]
}