module "resource_group" {
    source = "../../child_module/resource_group"
    rg_name = var.rg_name
  
}

module "vnet" {
    source = "../../child_module/vnet"
    vnet_name = var.vnet_name  
    resource_groups = module.resource_group.resource_groups
}

module "storage" {
    source = "../../child_module/storage"
    strg_name = var.strg_name
    resource_groups = module.resource_group.resource_groups  
}

module "subnet" {
    source = "../../child_module/subnet"
    subnet_name = var.subnet_name
       resource_groups = module.resource_group.resource_groups
    vnets = module.vnet.vnets 
}
module "nic" {
    source = "../../child_module/nic"
    nic_name = var.nic_name
    resource_groups = module.resource_group.resource_groups
    subnets = module.subnet.subnets  
}

module "pip" {
    source = "../../child_module/pip"
    pip_name = var.pip_name
    resource_groups = module.resource_group.resource_groups  
}

module "vm" {
    source = "../../child_module/vm"
    vm_name = var.vm_name
    resource_groups = module.resource_group.resource_groups
    nics = module.nic.nics  
}