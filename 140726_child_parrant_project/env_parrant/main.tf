module "resource_group" {
  source = "../modules_chaild/01_azurerm_resource_group"
  rgs    = var.resource_group
}

module "virtual_network" {
  source     = "../modules_chaild/02_azurerm_virtual_network"
  vnets      = var.virtual_network
  depends_on = [module.resource_group]
}

module "subnet" {
  source     = "../modules_chaild/03_azurerm_subnet"
  subnets    = var.subnet
  depends_on = [module.virtual_network]
}

module "public_ip" {
  source     = "../modules_chaild/04_azurerm_public_ip"
  pip        = var.pips
  depends_on = [module.subnet]
}

module "nic" {
  source     = "../modules_chaild/05_azurerm_network_interface_card"
  nics       = var.nics
  depends_on = [module.public_ip]
}