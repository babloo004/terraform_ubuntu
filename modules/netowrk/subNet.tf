data "azurerm_subnet" "azsn01" {
    name = "default"
    virtual_network_name = azurerm_virtual_network.azvn.name
    resource_group_name = var.resource_group_name

    depends_on = [ azurerm_virtual_network.azvn ]
}

data "azurerm_subnet" "azsn02" {
    name = "kube"
    virtual_network_name = azurerm_virtual_network.azvn.name
    resource_group_name = var.resource_group_name
    depends_on = [ azurerm_virtual_network.azvn ]
}