data "azurerm_resource_group" "rg" {
    name = "terra02"

    depends_on = [ azurerm_resource_group.rg ]
}

output "name" {
  value = data.azurerm_resource_group.rg.name
}

output "id" {
  value = data.azurerm_resource_group.rg.id
}

output "location" {
  value = data.azurerm_resource_group.rg.location
}