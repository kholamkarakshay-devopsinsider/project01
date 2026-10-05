resource_group = {
  rg01 = {
    name     = "VIKAS-rg33333333333"
    location = "centralindia"
  }
  # rg02 = {
  #     name = "dilip-rg02"
  #     location = "westus"
  # }
}

virtual_network = {
  vnet01 = {
    name                = "VIKAS-vnet01"
    location            = "centralindia"
    resource_group_name = "VIKAS-rg01"
    address_space       = ["10.22.0.0/16"]
  }
  # vnet02={
  #   name                = "-vnet02"
  # location            = "westus"
  # resource_group_name = "dilip-rg02"
  # address_space       = ["10.24.0.0/16"]
  # }
}

subnet = {
  subnet01 = {
    name                 = "VIKAS-subnet01"
    virtual_network_name = "VIKAS-vnet01"
    resource_group_name  = "VIKAS-rg01"
    address_prefixes     = ["10.22.0.0/24"]
  }
  subnet03 = {
    name                 = "VIKAS-subnet02"
    virtual_network_name = "VIKAS-vnet01"
    resource_group_name  = "VIKAS-rg01"
    address_prefixes     = ["10.22.1.0/24"]
  }
  #      subnet02 = {
  #   name                 = "dilip-subnet01"
  #   virtual_network_name = "dilip-vnet02"
  #   resource_group_name  = "dilip-rg02"
  #   address_prefixes     = ["10.24.0.0/24"]
  #  }
}

pips = {
  pip1 = {
    name                = "VK_pip01"
    location            = "centralindia"
    resource_group_name = "VIKAS-rg01"
    allocation_method   = "Static"
  }
  #  pip2={
  # name                = "VK_pip02"
  # location            = "westus"
  # resource_group_name = "dilip-rg02"
  # allocation_method   = "Static"
  #   }
}

nics = {
  nic01 = {
    nic_name             = "VIKAS-nic_one"
    location             = "centralindia"
    resource_group_name  = "VIKAS-rg01"
    virtual_network_name = "VIKAS-vnet01"
    subnet_name          = "VIKAS-subnet01"
    pip_name             = "VK_pip01"
  }
}