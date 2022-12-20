resource "azurerm_network_interface" "network_interfaces" {
    name = "networkinterfaces"
  count = var.vm_count
    resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
    location = var.location

    ip_configuration{
        name = "frontend"
        subnet_id = var.subnet_id
        private_ip_address_allocation = "Dynamic"
    }
}

resource "azurerm_network_interface_security_group_association" "network_interface_nsg"{
count = 1
network_interface_id = azurerm_network_interface.network_interfaces[count.index].id
network_security_group = var.nsg_id
}