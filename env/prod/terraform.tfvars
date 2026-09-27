rg_name = {
    rg1 = {
        name = "pillu"
        location = "centralindia"
    }
    rg2 = {
        name = "tillu"
        location = "westus"
    }
}

vnet_name = {
    vnet1 ={
        name ="amitvnet3"
        rg = "rg1"
        address_space = ["10.0.0.0/16"]
    }
    vnet2 ={
        name ="amitvnet4"
        rg = "rg2"
        address_space = ["172.16.0.0/16"]
    }
}

strg_name = {
    strg1 = {
        name = "amitstrg007"
        rg = "rg1"
    }
    strg2 = {
        name = "amitstrg008"
        rg = "rg2"
    }
}

subnet_name = {
    subnet1 = {
        name = "amitsubnet1"
        rg = "rg1"
        vnet = "vnet1"
        address_prefixes= ["10.0.1.0/24"]
    }
    subnet2 = {
        name = "amitsubnet2"
        rg = "rg2"
        vnet = "vnet2"
        address_prefixes = ["172.16.1.0/24"]
    }
}

nic_name = {
    nic1 = {
        name = "amitnic1"
        subnet = "subnet1"
        rg = "rg1"
    }
    nic2 = {
        name = "amitnic2"
        subnet = "subnet2"
        rg = "rg2"
    }
}

pip_name = {
    pip1 = {
        name = "amitpip1"
        rg = "rg1"
    }
    pip2 = {
        name = "amitpip2"
        rg = "rg2"
    }
}

vm_name = {
    vm1 = {
        name = "amitvm1"
        rg = "rg1"
        nic = "nic1"
    }
    vm2 = {
        name = "amitvm2"
        rg = "rg2"
        nic = "nic2"
    }
}