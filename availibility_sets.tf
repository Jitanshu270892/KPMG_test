resource "azurerm_availability_set" "frontend_availability_set" {
  name                = "frontend_availabilty_set"
  location            = var.location
  resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
 }

resource "azurerm_availability_set" "backend_availability_set" {
  name                = "backend_availabilty_set"
  location            = var.location
  resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
 }

resource "azurerm_availability_set" "sql_availability_set" {
  name                = "sql_availabilty_set"
  location            = var.location
  resource_group_name = azurerm_resoure_group.client_we_rg_environmentname.name
 }