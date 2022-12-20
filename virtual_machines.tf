resource "azurerm_windows_virtual_machine" "frontend_uat" {
  name = "frontend-uat"
  count = var.vm_count
  location = var.location	
  resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
  network_interface_ids = [ element(azurerm_network_interface.network_interfaces.*.id,count.index)]
  availability_set_id = azurerm_availability_set.frontend_availability_set.id
  vm_size = var.vm_size
  delete_os_disk_on_termination = true
  source_image = var.vm_image_id
 

  storage_os_disk {
    name = "web-disk"
    caching = var.vm_storage_disk_caching
    create_option = "FromImage"
    managed_disk_type = var.managed_disk_type
  }
}

resource "azurerm_windows_virtual_machine" "backend_uat" {
  name = "backend-uat"
count = var.vm_count
  location = var.location	
  resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
  network_interface_ids = [ element(azurerm_network_interface.network_interfaces.*.id,count.index)]
  availability_set_id = azurerm_availability_set.backend_availability_set.id
  vm_size = var.vm_size
  delete_os_disk_on_termination = true
  source_image = var.vm_image_id
 

  storage_os_disk {
    name = "web-disk"
    caching = var.vm_storage_disk_caching
    create_option = "FromImage"
    managed_disk_type = var.managed_disk_type
  }
}

resource "azurerm_windows_virtual_machine" "sql_uat" {
  name = "sql-uat"
count = var.vm_count
  location = var.location	
  resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
  network_interface_ids = [ element(azurerm_network_interface.network_interfaces.*.id,count.index)]
  availability_set_id = azurerm_availability_set.sql_availability_set.id
  vm_size = var.vm_size
  delete_os_disk_on_termination = true
  source_image_reference {
publisher = var.vm_publisher
offer = var.vm_offer
sku = var.vm_sku
version = var.vm_version
}
 

  storage_os_disk {
    name = "web-disk"
    caching = var.vm_storage_disk_caching
    create_option = "FromImage"
    managed_disk_type = var.managed_disk_type
  }
}





resoure  "random_string""password"{
length = 16
special = true
min_special = 2
override_special = "/@\\\\"
}
resource "random_string""dynamic_hostname"{
length =12
special = false
}
