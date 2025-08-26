module "resourceGroup" {
  source = "./modules/resource"
}

module "virtualNetwork" {
  source     = "./modules/netowrk"
  depends_on = [module.resourceGroup]
}

module "virtualMachine" {
  source     = "./modules/vm"
  depends_on = [module.virtualNetwork]
}