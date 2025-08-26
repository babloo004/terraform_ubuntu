resource "azurerm_network_security_group" "aznsg01" {
  name = "default-terra02"
  location = var.resource_group_location
  resource_group_name = var.resource_group_name

  security_rule  {
    name = "allow-ssh"
    priority = 100
    direction = "Inbound"
    access = "Allow"
    protocol = "Tcp"
    source_port_range = "*"
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }

  security_rule  {
    name = "allow-all-outbound"
    priority = 100
    direction = "Outbound"
    access = "Allow"
    protocol = "*"
    source_port_range = "*"
    destination_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }
  
  # depends_on = [ azurerm_virtual_network.azvn ]
}

resource "azurerm_network_security_group" "aznsg02" {
    name = "kubensg"
    location = var.resource_group_location
    resource_group_name = var.resource_group_name

    security_rule {
        name = "allow-ssh"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "Tcp"
        source_port_range = "*"
        destination_port_range = "22"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name = "allow-all-outbound"
        priority = 100
        direction = "Outbound"
        access = "Allow"
        protocol = "*"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "*"
        destination_address_prefix = "*"
    }

    # depends_on = [ azurerm_virtual_network.azvn ]
}