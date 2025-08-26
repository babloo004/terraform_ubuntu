# module "rg" {
#   source = "../resource"
# }

# module "virtual_network" {
#   source = "../netowrk"
# }

data "azurerm_network_interface" "azni" {
    name = "default"
    resource_group_name = var.resource_group_name
}