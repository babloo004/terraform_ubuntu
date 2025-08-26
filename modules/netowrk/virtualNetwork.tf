resource "azurerm_virtual_network" "azvn"{
    name = "terra02-vn"
    location = var.resource_group_location
    resource_group_name = var.resource_group_name
    address_space = ["10.0.0.0/16"]

    subnet {
        name = "kube"
        address_prefixes = ["10.0.1.0/24"]
        security_group = azurerm_network_security_group.aznsg02.id
    }

    subnet {
        name = "default"
        address_prefixes = ["10.0.2.0/24"]
        security_group = azurerm_network_security_group.aznsg01.id
    }

    tags = {
      name = "terra02"
    }

    depends_on = [ azurerm_network_security_group.aznsg01, azurerm_network_security_group.aznsg02 ]
}